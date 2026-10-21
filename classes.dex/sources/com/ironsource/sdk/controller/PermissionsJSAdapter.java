package com.ironsource.sdk.controller;

import android.content.Context;
import com.ironsource.environment.ApplicationContext;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.controller.IronSourceWebView;
import com.ironsource.sdk.data.SSAObj;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PermissionsJSAdapter {
    private static final String TAG = PermissionsJSAdapter.class.getSimpleName();
    private static final String fail = "fail";
    private static final String getPermissions = "getPermissions";
    private static final String isPermissionGranted = "isPermissionGranted";
    private static final String permissionsFunction = "functionName";
    private static final String permissionsGetPermissionsParam = "permissions";
    private static final String permissionsParameters = "functionParams";
    private static final String permissionsisPermissionGrantedParam = "permission";
    private static final String permissionsisPermissionGrantedStatus = "status";
    private static final String success = "success";
    private static final String unhandled = "unhandledPermission";
    private Context mContext;

    public PermissionsJSAdapter(Context context) {
        this.mContext = context;
    }

    private static class FunctionCall {
        String failureCallback;
        String name;
        JSONObject params;
        String successCallback;

        private FunctionCall() {
        }
    }

    private FunctionCall fetchFunctionCall(String params) throws JSONException {
        JSONObject functionData = new JSONObject(params);
        FunctionCall res = new FunctionCall();
        res.name = functionData.optString(permissionsFunction);
        res.params = functionData.optJSONObject(permissionsParameters);
        res.successCallback = functionData.optString("success");
        res.failureCallback = functionData.optString(fail);
        return res;
    }

    void call(String params, IronSourceWebView.JSInterface.JSCallbackTask callback) throws Exception {
        FunctionCall fCall = fetchFunctionCall(params);
        if (getPermissions.equals(fCall.name)) {
            getPermissions(fCall.params, fCall, callback);
        } else if (isPermissionGranted.equals(fCall.name)) {
            isPermissionGranted(fCall.params, fCall, callback);
        } else {
            Logger.i(TAG, "PermissionsJSAdapter unhandled API request " + params);
        }
    }

    public void isPermissionGranted(JSONObject value, FunctionCall fCall, IronSourceWebView.JSInterface.JSCallbackTask callback) {
        SSAObj permissionAndStatus = new SSAObj();
        try {
            String permissionName = value.getString("permission");
            permissionAndStatus.put("permission", permissionName);
            if (ApplicationContext.isValidPermission(this.mContext, permissionName)) {
                boolean isPermissionGrantedValue = ApplicationContext.isPermissionGranted(this.mContext, permissionName);
                permissionAndStatus.put("status", String.valueOf(isPermissionGrantedValue));
                callback.sendMessage(true, fCall.successCallback, permissionAndStatus);
            } else {
                permissionAndStatus.put("status", unhandled);
                callback.sendMessage(false, fCall.failureCallback, permissionAndStatus);
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (permissionAndStatus != null) {
                permissionAndStatus.put(Constants.ParametersKeys.ERR_MSG, e.getMessage());
            }
            callback.sendMessage(false, fCall.failureCallback, permissionAndStatus);
        }
    }

    public void getPermissions(JSONObject value, FunctionCall fCall, IronSourceWebView.JSInterface.JSCallbackTask callback) {
        SSAObj permissions = new SSAObj();
        try {
            JSONArray permissionsFromController = value.getJSONArray("permissions");
            permissions.put("permissions", ApplicationContext.getPermissions(this.mContext, permissionsFromController));
            callback.sendMessage(true, fCall.successCallback, permissions);
        } catch (Exception e) {
            e.printStackTrace();
            Logger.i(TAG, "PermissionsJSAdapter getPermissions JSON Exception when getting permissions parameter " + e.getMessage());
            if (permissions != null) {
                permissions.put(Constants.ParametersKeys.ERR_MSG, e.getMessage());
            }
            callback.sendMessage(false, fCall.failureCallback, permissions);
        }
    }
}
