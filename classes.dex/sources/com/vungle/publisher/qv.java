package com.vungle.publisher;

import com.google.gson.JsonObject;
import com.yunva.monsterhunter.Base64;
import java.util.Map;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.HeaderMap;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.QueryMap;
import rx.Observable;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public interface qv {
    @POST("{config}")
    Observable<JsonObject> a(@HeaderMap Map<String, String> map, @Path(encoded = Base64.ENCODE, value = "config") String str, @Body JsonObject jsonObject);

    @GET("{new}")
    Observable<JsonObject> a(@HeaderMap Map<String, String> map, @Path(encoded = Base64.ENCODE, value = "new") String str, @QueryMap Map<String, String> map2);

    @POST("{ads}")
    Observable<JsonObject> b(@HeaderMap Map<String, String> map, @Path(encoded = Base64.ENCODE, value = "ads") String str, @Body JsonObject jsonObject);

    @POST("{will_play_ad}")
    Observable<JsonObject> c(@HeaderMap Map<String, String> map, @Path(encoded = Base64.ENCODE, value = "will_play_ad") String str, @Body JsonObject jsonObject);

    @POST("{report_ad}")
    Observable<JsonObject> d(@HeaderMap Map<String, String> map, @Path(encoded = Base64.ENCODE, value = "report_ad") String str, @Body JsonObject jsonObject);

    @POST("{log}")
    Observable<JsonObject> e(@HeaderMap Map<String, String> map, @Path(encoded = Base64.ENCODE, value = "log") String str, @Body JsonObject jsonObject);
}
