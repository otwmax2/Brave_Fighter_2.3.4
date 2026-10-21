package com.yunva.monsterhunter;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphResponse;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.login.widget.LoginButton;
import com.facebook.share.Sharer;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.widget.GameRequestDialog;
import com.facebook.share.widget.ShareDialog;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.games.Games;
import com.google.android.gms.plus.PlusShare;
import com.google.example.games.basegameutils.GameHelper;
import com.ironsource.adapters.supersonicads.SupersonicConfig;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.OfferwallListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoListener;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.constants.LocationConst;
import com.ironsource.sdk.precache.DownloadManager;
import com.joynow.monster.gp.R;
import com.tendcloud.tenddata.TDGAAccount;
import com.tendcloud.tenddata.TDGAMission;
import com.tendcloud.tenddata.TDGAVirtualCurrency;
import com.tendcloud.tenddata.TalkingDataGA;
import com.tendcloud.tenddata.game.ao;
import com.unity3d.ads.UnityAds;
import com.vungle.publisher.VunglePub;
import com.yunva.monsterhunter.IabHelper;
import java.io.File;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxGLSurfaceView;

/* JADX INFO: loaded from: classes2.dex */
public class MonsterHunter extends Cocos2dxActivity implements GameHelper.GameHelperListener {
    private static final int AUTH_PUBLISH_ACTIONS_SCORES_ACTIVITY_CODE = 1117;
    private static final int FACEBOOK_PUBLISHDIALOG_REQUEST = 1118;
    private static final int ID_CHEACK_PG = 1111;
    private static final int ID_DISMISS_ACTIVECODE = 1115;
    private static final int ID_DISMISS_EXITGAME = 1114;
    private static final int ID_DISMISS_PROGRESS = 1113;
    private static final int ID_REQUEST_BANNERPOS1 = 1128;
    private static final int ID_REQUEST_BANNERPOS2 = 1129;
    private static final int ID_REQUEST_BANNERVISIABLE = 1127;
    private static final int ID_REQUEST_MOREGAME = 1125;
    private static final int ID_REQUEST_REQUESTFBVIEW = 1130;
    private static final int ID_REQUEST_REQUESTUPLOADSCORE = 1122;
    private static final int ID_REQUEST_SHAREGOOGLEPLAY = 1119;
    private static final int ID_REQUEST_SHARFACEBOOK = 1120;
    private static final int ID_REQUEST_SHOWADS = 1123;
    private static final int ID_REQUEST_SHOWERROR = 1126;
    private static final int ID_REQUEST_SHOWGOOGLELEADERBOARD = 1121;
    private static final int ID_REQUEST_SHOWVEDIOADS = 1124;
    private static final int ID_SHOW_PROGRESS = 1112;
    private static final int ID_START_PAY = 1110;
    private static final int LANGUAGE_CHINESE = 0;
    private static final int LANGUAGE_ENGLISH = 1;
    private static final int REQUEST_CODE_INTERACTIVE_POST = 1116;
    private static TDGAAccount account;
    static IabHelper.OnConsumeFinishedListener mConsumeFinishedListener;
    static int mCurlanguage;
    private static ProgressDialog mProgress;
    static IabHelper.OnIabPurchaseFinishedListener mPurchaseFinishedListener;
    private static String mStrTrade;
    private static long m_startTime;
    private static String[] PayId2 = {"周卡", "20个水晶", "55个水晶", "120个水晶", "270个水晶", "840个水晶", "2000个水晶", "2500个水晶", "暗黑套装", "新手礼包", "阵形扩充", "大礼包", "1万金币", "3万金币", "6万金币", "大礼包", "莱昂哈特", "达古达", "斯尔夫", "新手礼包", "死亡复活", "传奇佣兵", "64格子", "一键满级", "史诗套装", "技能解锁", "血瓶", "卷轴"};
    private static String[] eventId2 = {"佣兵屋打开", "商店界面打开", "成就界面打开", "布阵界面打开", "英雄殿堂打开", "城镇界面的礼包打开", "稀世套装购买", "阵型扩充购买", "强力捕捉购买", "急速冷却购买", "生命恢复购买", "双倍经验购买", "双倍掉率购买", "16格包购买", "连升5级购买", "落魄剑等级", "摄魂斩等级", "刀锋之舞等级", "冥河破等级", "武器等级", "盔甲等级", "吊坠等级", "符石等级", "进入关卡", "关卡的死亡", "点击重新开始次数", "1万金币", "3万金币", "6万金币", "12万金币", "18万金币", "血瓶", "卷轴", "复活"};
    private static String[] mSku = {"week_card_01", "diamonds_20.00", "diamonds_60.00", "diamonds_130.00", "crystals_270.00", "crystals_840.00", "crystals_2000.00", "diamonds_2500.00", "package_01", "hot_sale_01"};
    private static IabHelper mHelper = null;
    public static int mCurLevel = 0;
    public static int mCurPayIndex = -1;
    private static MonsterHunter mInstance = null;
    static boolean mDoBuy = false;
    private static int mScore = 0;
    private static boolean mNeedUpLoadScore = false;
    private static boolean mShowLeaderBoard = false;
    private static boolean mIsLoginFacebook = false;
    private static String mFacebookMsg = null;
    static boolean mRequestFacebook = false;
    private static String mCurQurySku = null;
    private static String mCurBuySku = null;
    private static boolean m_isRequestVedioAds = false;
    private static Handler sHandler = new Handler() { // from class: com.yunva.monsterhunter.MonsterHunter.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case MonsterHunter.ID_START_PAY /* 1110 */:
                    Map<String, Object> map = new HashMap<>();
                    map.put("请求购买id", MonsterHunter.PayId2[MonsterHunter.mCurPayIndex]);
                    TalkingDataGA.onEvent("请求购买", map);
                    if (MonsterHunter.mHelper == null || MonsterHunter.mHelper.canExcuteBuy()) {
                        String unused = MonsterHunter.mStrTrade = MonsterHunter.getOutTradeNo();
                        int[] prices = {199, 499, 999, 1999, 4999, 9999, 19299, 2999, 1499, 499};
                        int price = prices[MonsterHunter.mCurPayIndex];
                        TDGAVirtualCurrency.onChargeRequest(MonsterHunter.mStrTrade, MonsterHunter.PayId2[MonsterHunter.mCurPayIndex], price / 100, "", 0.0d, "default");
                        if (MonsterHunter.mHelper == null) {
                            IabHelper unused2 = MonsterHunter.mHelper = new IabHelper(MonsterHunter.mInstance, MonsterHunter.getGoogleKey());
                            MonsterHunter.mHelper.startSetup(new IabHelper.OnIabSetupFinishedListener() { // from class: com.yunva.monsterhunter.MonsterHunter.1.3
                                @Override // com.yunva.monsterhunter.IabHelper.OnIabSetupFinishedListener
                                public void onIabSetupFinished(IabResult result) {
                                    if (result.isSuccess()) {
                                        try {
                                            if (MonsterHunter.getAnHeiState() != 1 || MonsterHunter.mCurPayIndex != 8) {
                                                String unused3 = MonsterHunter.mCurBuySku = MonsterHunter.mSku[MonsterHunter.mCurPayIndex];
                                                MonsterHunter.mHelper.launchPurchaseFlow(MonsterHunter.mInstance, MonsterHunter.mSku[MonsterHunter.mCurPayIndex], MonsterHunter.mCurPayIndex, MonsterHunter.mPurchaseFinishedListener, "" + MonsterHunter.mCurPayIndex);
                                            } else {
                                                String unused4 = MonsterHunter.mCurBuySku = "package_02";
                                                MonsterHunter.mHelper.launchPurchaseFlow(MonsterHunter.mInstance, "package_02", MonsterHunter.mCurPayIndex, MonsterHunter.mPurchaseFinishedListener, "" + MonsterHunter.mCurPayIndex);
                                            }
                                            return;
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            MonsterHunter.payCallBack(MonsterHunter.mCurPayIndex, 0);
                                            MonsterHunter.mCurPayIndex = -1;
                                            MonsterHunter.mDoBuy = false;
                                            return;
                                        }
                                    }
                                    Toast.makeText(MonsterHunter.mInstance, "can not connect google play", 1).show();
                                    MonsterHunter.payCallBack(MonsterHunter.mCurPayIndex, 0);
                                    MonsterHunter.mCurPayIndex = -1;
                                    MonsterHunter.mDoBuy = false;
                                    IabHelper unused5 = MonsterHunter.mHelper = null;
                                }
                            });
                        } else if (MonsterHunter.mHelper != null) {
                            try {
                                if (MonsterHunter.getAnHeiState() != 1 || MonsterHunter.mCurPayIndex != 8) {
                                    String unused3 = MonsterHunter.mCurBuySku = MonsterHunter.mSku[MonsterHunter.mCurPayIndex];
                                    MonsterHunter.mHelper.launchPurchaseFlow(MonsterHunter.mInstance, MonsterHunter.mSku[MonsterHunter.mCurPayIndex], MonsterHunter.mCurPayIndex, MonsterHunter.mPurchaseFinishedListener, "" + MonsterHunter.mCurPayIndex);
                                } else {
                                    String unused4 = MonsterHunter.mCurBuySku = "package_02";
                                    MonsterHunter.mHelper.launchPurchaseFlow(MonsterHunter.mInstance, "package_02", MonsterHunter.mCurPayIndex, MonsterHunter.mPurchaseFinishedListener, "" + MonsterHunter.mCurPayIndex);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                MonsterHunter.payCallBack(MonsterHunter.mCurPayIndex, 0);
                                MonsterHunter.mCurPayIndex = -1;
                                MonsterHunter.mDoBuy = false;
                                return;
                            }
                        }
                    } else {
                        MonsterHunter.payCallBack(MonsterHunter.mCurPayIndex, 0);
                        Toast.makeText(MonsterHunter.mInstance, "please try later", 1).show();
                        MonsterHunter.mCurPayIndex = -1;
                        MonsterHunter.mDoBuy = false;
                    }
                    break;
                case MonsterHunter.ID_SHOW_PROGRESS /* 1112 */:
                    MonsterHunter.showProgress((String) msg.obj);
                    break;
                case MonsterHunter.ID_DISMISS_PROGRESS /* 1113 */:
                    MonsterHunter.dissmissProgress();
                    break;
                case MonsterHunter.ID_DISMISS_EXITGAME /* 1114 */:
                    AlertDialog.Builder builder = new AlertDialog.Builder(MonsterHunter.mInstance);
                    builder.setMessage("exit the game?");
                    builder.setTitle("title");
                    String yes = "yes";
                    String no = "no";
                    if (MonsterHunter.mCurlanguage == 0) {
                        builder.setMessage("確定退出遊戲?");
                        builder.setTitle("提示");
                        yes = "確定";
                        no = "取消";
                    }
                    builder.setNegativeButton(yes, new DialogInterface.OnClickListener() { // from class: com.yunva.monsterhunter.MonsterHunter.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            MonsterHunter.exitGame();
                        }
                    });
                    builder.setPositiveButton(no, new DialogInterface.OnClickListener() { // from class: com.yunva.monsterhunter.MonsterHunter.1.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                        }
                    });
                    builder.create().show();
                    break;
                case MonsterHunter.ID_DISMISS_ACTIVECODE /* 1115 */:
                    MonsterHunter.showActiveCode();
                    break;
                case MonsterHunter.ID_REQUEST_SHAREGOOGLEPLAY /* 1119 */:
                    MonsterHunter.mInstance.shareGooglePlusMsg((String) msg.obj);
                    break;
                case MonsterHunter.ID_REQUEST_SHARFACEBOOK /* 1120 */:
                    MonsterHunter.mInstance.shareWithFaceBook();
                    break;
                case MonsterHunter.ID_REQUEST_SHOWGOOGLELEADERBOARD /* 1121 */:
                    MonsterHunter.mInstance.showLeaderboard();
                    break;
                case MonsterHunter.ID_REQUEST_REQUESTUPLOADSCORE /* 1122 */:
                    MonsterHunter.mInstance.upLoadScoreToPlus(msg.arg1);
                    break;
                case MonsterHunter.ID_REQUEST_SHOWADS /* 1123 */:
                    if (msg.arg1 == 1) {
                        Log.i("TAG", Constants.JSMethods.SHOW_INTERSTITIAL);
                        if (IronSource.isInterstitialReady()) {
                            IronSource.showInterstitial();
                            Log.i("tag", "isInterstitialReady");
                        } else {
                            Log.i("tag", "isInterstitialReady is false");
                            IronSource.loadInterstitial();
                        }
                    } else {
                        IronSource.loadInterstitial();
                    }
                    break;
                case MonsterHunter.ID_REQUEST_SHOWVEDIOADS /* 1124 */:
                    boolean unused5 = MonsterHunter.m_isRequestVedioAds = true;
                    if (IronSource.isRewardedVideoAvailable()) {
                        IronSource.showRewardedVideo();
                    } else if (MonsterHunter.mCurlanguage == 1) {
                        Toast.makeText(MonsterHunter.mInstance, "no available ads", 1).show();
                    } else {
                        Toast.makeText(MonsterHunter.mInstance, "沒有可用的廣告...", 1).show();
                    }
                    break;
                case MonsterHunter.ID_REQUEST_MOREGAME /* 1125 */:
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    Uri content_url = Uri.parse("https://play.google.com/store/apps/developer?id=JOYNOWSTUDIO");
                    intent.setData(content_url);
                    intent.setPackage("com.android.vending");
                    try {
                        MonsterHunter.mInstance.startActivity(intent);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                    break;
                case MonsterHunter.ID_REQUEST_SHOWERROR /* 1126 */:
                    MonsterHunter.mInstance.showDialog("提示", (String) msg.obj);
                    break;
                case MonsterHunter.ID_REQUEST_BANNERPOS2 /* 1129 */:
                    Bundle b = msg.getData();
                    b.getFloat("lp");
                    b.getFloat("tp");
                    break;
            }
        }
    };
    HashMap<TrackerName, Tracker> mTrackers = new HashMap<>();
    private GameHelper mGameHelper = null;
    private CallbackManager callbackManager = null;
    private GameRequestDialog gameRequestDialog = null;
    IabHelper.QueryInventoryFinishedListener mGotInventoryListener = new IabHelper.QueryInventoryFinishedListener() { // from class: com.yunva.monsterhunter.MonsterHunter.7
        @Override // com.yunva.monsterhunter.IabHelper.QueryInventoryFinishedListener
        public void onQueryInventoryFinished(IabResult result, Inventory inventory) {
            if (MonsterHunter.mHelper != null && !result.isFailure()) {
                Purchase gasPurchase = inventory.getPurchase(MonsterHunter.mCurQurySku);
                if (gasPurchase != null) {
                    try {
                        MonsterHunter.mHelper.consumeAsync(inventory.getPurchase(MonsterHunter.mCurQurySku), MonsterHunter.mConsumeFinishedListener);
                    } catch (IabHelper.IabAsyncInProgressException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    };
    RewardedVideoListener videolistener = new RewardedVideoListener() { // from class: com.yunva.monsterhunter.MonsterHunter.16
        @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
        public void onRewardedVideoAvailabilityChanged(boolean arg0) {
        }

        @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
        public void onRewardedVideoAdStarted() {
        }

        @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
        public void onRewardedVideoAdShowFailed(IronSourceError arg0) {
            if (MonsterHunter.mCurlanguage == 1) {
                Toast.makeText(MonsterHunter.mInstance, "reward failed", 1).show();
            } else {
                Toast.makeText(MonsterHunter.mInstance, "廣告獎勵獲取失敗...", 1).show();
            }
        }

        @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
        public void onRewardedVideoAdRewarded(Placement arg0) {
            if (MonsterHunter.vedioAdsOver() == 1) {
                if (MonsterHunter.mCurlanguage == 1) {
                    Toast.makeText(MonsterHunter.mInstance, "Diamonds X2", 1).show();
                } else {
                    Toast.makeText(MonsterHunter.mInstance, "鑽石 X2", 1).show();
                }
            }
        }

        @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
        public void onRewardedVideoAdOpened() {
        }

        @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
        public void onRewardedVideoAdEnded() {
        }

        @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
        public void onRewardedVideoAdClosed() {
        }

        @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
        public void onRewardedVideoAdClicked(Placement arg0) {
        }
    };
    OfferwallListener offwallListener = new OfferwallListener() { // from class: com.yunva.monsterhunter.MonsterHunter.17
        @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
        public void onOfferwallShowFailed(IronSourceError arg0) {
            Map<String, Object> map = new HashMap<>();
            map.put("param", "1");
            TalkingDataGA.onEvent("OfferwallShowFailed", map);
        }

        @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
        public void onOfferwallOpened() {
            Map<String, Object> map = new HashMap<>();
            map.put("param", "1");
            TalkingDataGA.onEvent("OfferwallOpened", map);
        }

        @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
        public void onOfferwallClosed() {
        }

        @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
        public void onOfferwallAvailable(boolean arg0) {
        }

        @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
        public boolean onOfferwallAdCredited(int arg0, int arg1, boolean arg2) {
            MonsterHunter.jfqReward(arg1);
            if (MonsterHunter.mCurlanguage == 1) {
                Toast.makeText(MonsterHunter.mInstance, "Diamonds X" + arg1, 1).show();
            } else {
                Toast.makeText(MonsterHunter.mInstance, "鑽石 X" + arg1, 1).show();
            }
            Map<String, Object> map = new HashMap<>();
            map.put("param", "ironsource");
            TalkingDataGA.onEvent("Jfq_Reward", map);
            return true;
        }

        @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
        public void onGetOfferwallCreditsFailed(IronSourceError arg0) {
        }
    };

    public enum TrackerName {
        APP_TRACKER,
        GLOBAL_TRACKER,
        ECOMMERCE_TRACKER
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native int excuteDuihuan(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void exitGame();

    /* JADX INFO: Access modifiers changed from: private */
    public static native int getAnHeiState();

    private static native void getGiftTime(int i, int i2);

    private static native int getGoodPrice(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native String getGoogleKey();

    private static native int getHeroLevel();

    private static native int getOpenLevel();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void jfqReward(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void keyBack();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void payCallBack(int i, int i2);

    private static native void setLanguage(int i);

    private static native void setOperator(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void setPlayerName(String str);

    private static native void setYear(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int vedioAdsOver();

    static {
        System.loadLibrary("cocos2dcpp");
        mPurchaseFinishedListener = new IabHelper.OnIabPurchaseFinishedListener() { // from class: com.yunva.monsterhunter.MonsterHunter.5
            @Override // com.yunva.monsterhunter.IabHelper.OnIabPurchaseFinishedListener
            public void onIabPurchaseFinished(IabResult result, Purchase purchase) {
                MonsterHunter.mDoBuy = false;
                if (MonsterHunter.mHelper != null) {
                    if (result.isFailure()) {
                        Toast.makeText(MonsterHunter.mInstance, "sorry faile to buy", 1).show();
                        MonsterHunter.payCallBack(MonsterHunter.mCurPayIndex, 0);
                        MonsterHunter.mCurPayIndex = -1;
                        if (result.mResponse == 7) {
                            if (purchase == null) {
                                String unused = MonsterHunter.mCurQurySku = MonsterHunter.mCurBuySku;
                            } else {
                                String unused2 = MonsterHunter.mCurQurySku = purchase.mSku;
                            }
                            try {
                                MonsterHunter.mHelper.queryInventoryAsync(MonsterHunter.mInstance.mGotInventoryListener);
                                return;
                            } catch (IabHelper.IabAsyncInProgressException e) {
                                e.printStackTrace();
                                return;
                            }
                        }
                        return;
                    }
                    Log.d("TAG", "Purchase successful.");
                    if (purchase.getSku().equals(MonsterHunter.mSku[MonsterHunter.mCurPayIndex]) || (MonsterHunter.mCurPayIndex == 8 && purchase.getSku().equals("package_02"))) {
                        MonsterHunter.payCallBack(MonsterHunter.mCurPayIndex, 1);
                        try {
                            MonsterHunter.mHelper.consumeAsync(purchase, MonsterHunter.mConsumeFinishedListener);
                        } catch (IabHelper.IabAsyncInProgressException e2) {
                            e2.printStackTrace();
                        }
                        TDGAVirtualCurrency.onChargeSuccess(MonsterHunter.mStrTrade);
                        MonsterHunter.mCurPayIndex = -1;
                    }
                }
            }
        };
        mConsumeFinishedListener = new IabHelper.OnConsumeFinishedListener() { // from class: com.yunva.monsterhunter.MonsterHunter.6
            @Override // com.yunva.monsterhunter.IabHelper.OnConsumeFinishedListener
            public void onConsumeFinished(Purchase purchase, IabResult result) {
                if (result.isSuccess()) {
                }
            }
        };
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setFlags(128, 128);
        mInstance = this;
        FacebookSdk.sdkInitialize(getApplicationContext());
        TalkingDataGA.init(this, "5E5853774218FC6736ABEE2DF8403871", "GooglePlay4.0");
        account = TDGAAccount.setAccount(TalkingDataGA.getDeviceId(this));
        account.setAccountType(TDGAAccount.AccountType.ANONYMOUS);
        SupersonicConfig.getConfigObj().setClientSideCallbacks(true);
        IronSource.init(this, "6e87efb5");
        IronSource.setRewardedVideoListener(this.videolistener);
        this.callbackManager = CallbackManager.Factory.create();
        PackageManager pkm = getPackageManager();
        try {
            PackageInfo info = pkm.getPackageInfo(getPackageName(), 0);
            account.setGameServer(info.versionName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        File odex = getDir("odex", 0);
        String odexPath = odex.getAbsolutePath();
        File flib = new File(odexPath + "/monster.apk");
        flib.delete();
        File flib2 = new File(odexPath + "/monster.dex");
        flib2.delete();
        String language = Locale.getDefault().getLanguage();
        if (language.equals("zh_TW") || language.equals("zh")) {
            setLanguage(0);
            mCurlanguage = 0;
        } else {
            setLanguage(1);
            mCurlanguage = 1;
        }
        getTracker(TrackerName.APP_TRACKER);
        mHelper = new IabHelper(mInstance, getGoogleKey());
        mHelper.startSetup(new IabHelper.OnIabSetupFinishedListener() { // from class: com.yunva.monsterhunter.MonsterHunter.2
            @Override // com.yunva.monsterhunter.IabHelper.OnIabSetupFinishedListener
            public void onIabSetupFinished(IabResult result) {
                if (result.isSuccess()) {
                    if (MonsterHunter.mHelper == null) {
                    }
                    return;
                }
                String gpmsg = result.getMessage();
                Log.i("tag", "gpms:" + gpmsg);
                Toast.makeText(MonsterHunter.mInstance, "can not connect google play", 1).show();
                IabHelper unused = MonsterHunter.mHelper = null;
            }
        });
        m_startTime = System.currentTimeMillis();
    }

    private static void showAdsList() {
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity
    public Cocos2dxGLSurfaceView onCreateView() {
        Cocos2dxGLSurfaceView glSurfaceView = new Cocos2dxGLSurfaceView(this);
        glSurfaceView.setEGLConfigChooser(5, 6, 5, 0, 16, 8);
        return glSurfaceView;
    }

    public String getFromRaw(int id) {
        try {
            InputStream in = getResources().openRawResource(id);
            int lenght = in.available();
            byte[] buffer = new byte[lenght];
            in.read(buffer);
            String result = new String(buffer, DownloadManager.UTF8_CHARSET);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static void Buy(int index) {
        mCurPayIndex = index;
        mDoBuy = true;
        sHandler.obtainMessage(ID_START_PAY).sendToTarget();
    }

    private static void cheackProgram() {
        sHandler.obtainMessage(ID_CHEACK_PG).sendToTarget();
    }

    private static void showMsg(String msg) {
        sHandler.obtainMessage(ID_SHOW_PROGRESS, msg).sendToTarget();
    }

    private static void dismissMsg() {
        sHandler.obtainMessage(ID_DISMISS_PROGRESS).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showProgress(String str) {
        if (mProgress == null) {
            mProgress = new ProgressDialog(getContext());
            mProgress.setIndeterminate(true);
            mProgress.setCancelable(false);
            mProgress.setMessage(str);
        }
        if (!mProgress.isShowing()) {
            mProgress.show();
        }
    }

    private static void event2(int id, int param) {
    }

    private static void event(int id, int param) {
        if (id == 8) {
            TDGAMission.onBegin("level:" + param);
            return;
        }
        Map<String, Object> map = new HashMap<>();
        map.put(ao.f, "level:" + mCurLevel);
        map.put("param", "param:" + param);
        TalkingDataGA.onEvent(eventId2[id], map);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory(eventId2[id]).setAction("" + getOpenLevel()).setLabel("参数:" + param).build());
    }

    private static void eventteach(String param) {
        Map<String, Object> map = new HashMap<>();
        map.put("param", param);
        TalkingDataGA.onEvent("teach", map);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("teach").setAction("" + getOpenLevel()).setLabel(param).build());
    }

    private static void eventAchive(int achiveid) {
        Map<String, Object> map = new HashMap<>();
        map.put("achiveid", "achiveid:" + achiveid);
        TalkingDataGA.onEvent("1", map);
    }

    private static void heroLvelEvent(int level) {
        account.setLevel(level);
    }

    private static void monsterEvent(int monsterid, int level) {
        String[] ID = {"38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49"};
        Map<String, Object> map = new HashMap<>();
        map.put("monsterid", "monsterid:" + monsterid);
        map.put(ao.f, "level:" + level);
        TalkingDataGA.onEvent(ID[monsterid], map);
    }

    private static void getLevel(int level) {
        mCurLevel = level;
    }

    private static void giftEvent(int times) {
        Map<String, Object> map = new HashMap<>();
        map.put("times", "领奖次数:" + times);
        TalkingDataGA.onEvent("deilybonus", map);
    }

    private static void ExtraLevel(int level) {
        TDGAMission.onCompleted("level:" + level);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("完成关卡").setAction("" + getOpenLevel()).setLabel("关卡id:" + level).build());
    }

    private static void buyEquipEvent(int level) {
        Map<String, Object> map = new HashMap<>();
        map.put(ao.f, "购买关卡:" + level);
        TalkingDataGA.onEvent("buyEquipEvent", map);
    }

    private static void eventWiujin(int time, int herolevel) {
        Map<String, Object> map = new HashMap<>();
        map.put(LocationConst.TIME, "时间(秒):" + time);
        map.put(ao.f, "herolevel:" + herolevel);
        TalkingDataGA.onEvent("wujinmoshi", map);
    }

    private static void LoseLevel(int level) {
        TDGAMission.onFailed("level:" + level, "过关失败或者自行退出游戏");
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("关卡失败").setAction("" + getOpenLevel()).setLabel("关卡id:" + level).build());
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        TalkingDataGA.onResume(this);
        IronSource.onResume(this);
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        TalkingDataGA.onPause(this);
        IronSource.onPause(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dissmissProgress() {
        if (mProgress != null) {
            mProgress.dismiss();
            mProgress = null;
        }
    }

    static void compareTime() {
        Date date = new Date();
        setYear(date.getYear() + 1900);
        int month = date.getMonth();
        int day = date.getDate();
        getGiftTime(month, day);
    }

    static String getOutTradeNo() {
        SimpleDateFormat format = new SimpleDateFormat("MMddHHmmss");
        Date date = new Date();
        String strKey = format.format(date);
        Random r = new Random();
        String strKey2 = (strKey + r.nextInt()).substring(0, 15);
        Log.i("tag", "strKey:" + strKey2);
        return strKey2;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    private static void showduihuan() {
        sHandler.obtainMessage(ID_DISMISS_ACTIVECODE).sendToTarget();
    }

    private static void showExitDialog() {
        sHandler.obtainMessage(ID_DISMISS_EXITGAME).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showActiveCode() {
        LayoutInflater factory = LayoutInflater.from(mInstance);
        final View myView = factory.inflate(R.layout.edit_alert_dialog, (ViewGroup) null);
        AlertDialog.Builder builder = new AlertDialog.Builder(mInstance);
        builder.setView(myView);
        if (mCurlanguage == 1) {
            builder.setTitle("Get Gift");
            TextView textview = (TextView) myView.findViewById(R.id.textview);
            textview.setText("Please enter your present code to get your gift");
        } else {
            builder.setTitle("獎品兌換");
        }
        builder.setNegativeButton("Ok", new DialogInterface.OnClickListener() { // from class: com.yunva.monsterhunter.MonsterHunter.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                EditText edit = (EditText) myView.findViewById(R.id.edit);
                edit.getText().toString();
                String keycode = edit.getText().toString();
                SharedPreferences psettings = MonsterHunter.mInstance.getSharedPreferences("PREFS_KEYCODE", 0);
                int hasused = psettings.getInt(keycode, 0);
                if (hasused == 1) {
                    Toast.makeText(MonsterHunter.mInstance, "Error code!!!", 1).show();
                    return;
                }
                int result = MonsterHunter.excuteDuihuan(edit.getText().toString());
                Log.i("tag", "coderesult:" + result);
                boolean hasreward = false;
                if (result == 3) {
                    if (MonsterHunter.mCurlanguage != 1) {
                        Toast.makeText(MonsterHunter.mInstance, "恭喜您獲得金幣1500", 1).show();
                    } else {
                        Toast.makeText(MonsterHunter.mInstance, "You have got 1500 Gold", 1).show();
                    }
                    hasreward = true;
                } else if (result == 4) {
                    if (MonsterHunter.mCurlanguage != 1) {
                        Toast.makeText(MonsterHunter.mInstance, "恭喜您獲得金幣5000", 1).show();
                    } else {
                        Toast.makeText(MonsterHunter.mInstance, "You have got 5000 Gold", 1).show();
                    }
                    hasreward = true;
                } else if (result == 6) {
                    if (MonsterHunter.mCurlanguage != 1) {
                        Toast.makeText(MonsterHunter.mInstance, "恭喜您獲得水晶200", 1).show();
                    } else {
                        Toast.makeText(MonsterHunter.mInstance, "You have got 200 crystals", 1).show();
                    }
                    hasreward = true;
                } else if (result != 5 && result != 7) {
                    MonsterHunter.dissmissProgress();
                    Toast.makeText(MonsterHunter.mInstance, "Error Code!!!", 1).show();
                } else {
                    if (MonsterHunter.mCurlanguage == 1) {
                        Toast.makeText(MonsterHunter.mInstance, GraphResponse.SUCCESS_KEY, 1).show();
                    } else {
                        Toast.makeText(MonsterHunter.mInstance, "恭喜您兌換成功", 1).show();
                    }
                    hasreward = true;
                }
                if (hasreward) {
                    SharedPreferences settings = MonsterHunter.mInstance.getSharedPreferences("PREFS_KEYCODE", 0);
                    SharedPreferences.Editor editor = settings.edit();
                    editor.putInt(keycode, 1);
                    editor.commit();
                }
            }
        });
        builder.setPositiveButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.yunva.monsterhunter.MonsterHunter.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        });
        builder.setCancelable(false);
        builder.create().show();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        this.callbackManager.onActivityResult(requestCode, resultCode, data);
        if (mHelper != null && mDoBuy) {
            mHelper.handleActivityResult(requestCode, resultCode, data);
        } else if (this.mGameHelper != null && !mDoBuy) {
            this.mGameHelper.onActivityResult(requestCode, resultCode, data);
        }
    }

    private void LoginGooglePlayGameCenter() {
        if (this.mGameHelper == null) {
            this.mGameHelper = new GameHelper(this, 3);
            this.mGameHelper.setup(mInstance);
            this.mGameHelper.beginUserInitiatedSignIn();
        } else if (!this.mGameHelper.isSignedIn()) {
            this.mGameHelper.reconnectClient();
        }
    }

    @Override // com.google.example.games.basegameutils.GameHelper.GameHelperListener
    public void onSignInFailed() {
        Log.d("TAG", "GooglePlay GameCenter Login Falid");
    }

    @Override // com.google.example.games.basegameutils.GameHelper.GameHelperListener
    public void onSignInSucceeded() {
        Log.d("TAG", "GooglePlay GameCenter Login Succeeded");
        Games.Players.getCurrentPlayer(this.mGameHelper.getApiClient());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void upLoadScoreToPlus(int score) {
        if (this.mGameHelper == null || !this.mGameHelper.isSignedIn()) {
            LoginGooglePlayGameCenter();
            mScore = score;
            mNeedUpLoadScore = true;
        } else {
            Games.Leaderboards.submitScore(this.mGameHelper.getApiClient(), getString(R.string.leaderboard_easy), score * 10);
            showLeaderboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLeaderboard() {
        if (this.mGameHelper != null && this.mGameHelper.isSignedIn()) {
            startActivityForResult(Games.Leaderboards.getAllLeaderboardsIntent(this.mGameHelper.getApiClient()), 0);
        } else {
            LoginGooglePlayGameCenter();
            mShowLeaderBoard = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareGooglePlusMsg(String msg) {
        PlusShare.Builder builder = new PlusShare.Builder((Activity) this);
        builder.setContentUrl(Uri.parse(getString(R.string.plus_example_deep_link_url)));
        builder.setType("text/plain");
        builder.setText(msg);
        try {
            mInstance.startActivityForResult(builder.getIntent(), REQUEST_CODE_INTERACTIVE_POST);
        } catch (Exception e) {
            Toast.makeText(mInstance, "connect g+ failed ", 1).show();
        }
        Map<String, Object> map = new HashMap<>();
        map.put("Platform", "GooglePlus");
        TalkingDataGA.onEvent("Share", map);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("g+分享").setAction("" + getOpenLevel()).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareWithFaceBook() {
        mRequestFacebook = true;
        if (!mIsLoginFacebook) {
            loginFb();
        } else {
            postStatusUpdate();
        }
    }

    private void postStatusUpdate() {
        FacebookCallback<Sharer.Result> callback = new FacebookCallback<Sharer.Result>() { // from class: com.yunva.monsterhunter.MonsterHunter.8
            @Override // com.facebook.FacebookCallback
            public void onCancel() {
                Log.d("tag", "Canceled");
            }

            @Override // com.facebook.FacebookCallback
            public void onError(FacebookException error) {
                Log.d("tag", String.format("Error: %s", error.toString()));
            }

            @Override // com.facebook.FacebookCallback
            public void onSuccess(Sharer.Result result) {
                Log.d("tag", "Success!");
            }
        };
        ShareDialog shareDialog = new ShareDialog(this);
        shareDialog.registerCallback(this.callbackManager, callback);
        ShareContent content = getLinkContent();
        shareDialog.show(content, ShareDialog.Mode.NATIVE);
        Map<String, Object> map = new HashMap<>();
        map.put("Platform", "FaceBook");
        TalkingDataGA.onEvent("Share", map);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("facebook分享").setAction("" + getOpenLevel()).build());
    }

    private ShareContent getLinkContent() {
        String url = mInstance.getResources().getString(R.string.plus_example_deep_link_url);
        return new ShareLinkContent.Builder().setContentTitle("HelloFriends").setContentUrl(Uri.parse(url)).setImageUrl(Uri.parse("https://scontent-a.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10847865_320736284789513_2990512908835743183_n.png?oh=181cecc54fe0fcd8248a85b44ab30bae&oe=5546B490")).setContentDescription(mFacebookMsg).build();
    }

    private void loginFb() {
        LoginManager.getInstance().registerCallback(this.callbackManager, new FacebookCallback<LoginResult>() { // from class: com.yunva.monsterhunter.MonsterHunter.9
            @Override // com.facebook.FacebookCallback
            public void onSuccess(LoginResult loginResult) {
                AccessToken accessToken = AccessToken.getCurrentAccessToken();
                if (!accessToken.getPermissions().contains("publish_actions")) {
                    LoginManager.getInstance().setDefaultAudience(DefaultAudience.FRIENDS).logInWithPublishPermissions(MonsterHunter.mInstance, Arrays.asList("publish_actions"));
                }
                boolean unused = MonsterHunter.mIsLoginFacebook = true;
                if (MonsterHunter.mRequestFacebook) {
                    MonsterHunter.this.shareWithFaceBook();
                    MonsterHunter.mRequestFacebook = false;
                }
            }

            @Override // com.facebook.FacebookCallback
            public void onCancel() {
                handleError();
                Log.i("tag", "onCancel");
            }

            @Override // com.facebook.FacebookCallback
            public void onError(FacebookException exception) {
                handleError();
                Log.i("tag", "onError:" + exception.getMessage());
            }

            private void handleError() {
            }
        });
        LoginButton lgtn = new LoginButton(mInstance);
        lgtn.callOnClick();
    }

    private static void requestShareGooglePlues(String msg) {
        sHandler.obtainMessage(ID_REQUEST_SHAREGOOGLEPLAY, msg).sendToTarget();
    }

    private static void requestShareFaceBook(String msg) {
        mFacebookMsg = msg;
        sHandler.obtainMessage(ID_REQUEST_SHARFACEBOOK).sendToTarget();
    }

    private static void requestShowLeaderBoard() {
        sHandler.obtainMessage(ID_REQUEST_SHOWGOOGLELEADERBOARD).sendToTarget();
    }

    private static void requestUploadScore(int score) {
        sHandler.obtainMessage(ID_REQUEST_REQUESTUPLOADSCORE, score, score).sendToTarget();
    }

    private static void showRate() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        Uri content_url = Uri.parse("https://play.google.com/store/apps/details?id=com.joynow.monster.gp");
        intent.setData(content_url);
        intent.setPackage("com.android.vending");
        try {
            mInstance.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Map<String, Object> map = new HashMap<>();
        map.put("xx", "1");
        TalkingDataGA.onEvent("Rate", map);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("评价游戏").setAction("" + getOpenLevel()).build());
    }

    private static void bannervisiable(int visable) {
        sHandler.obtainMessage(ID_REQUEST_BANNERVISIABLE, visable, visable).sendToTarget();
    }

    private static void setbannerPos(float lp, float tp) {
        Bundle b = new Bundle();
        b.putFloat("lp", lp);
        b.putFloat("tp", tp);
        Message m = sHandler.obtainMessage(ID_REQUEST_BANNERPOS2);
        m.setData(b);
        m.sendToTarget();
    }

    private static void setbannerPos(int ptype) {
        sHandler.obtainMessage(ID_REQUEST_BANNERPOS1, ptype, ptype).sendToTarget();
    }

    private static void showAds(int immediately) {
        sHandler.obtainMessage(ID_REQUEST_SHOWADS, immediately, immediately).sendToTarget();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    private static void eventTask(int id) {
        Map<String, Object> map = new HashMap<>();
        map.put("taskId", "id:" + id);
        TalkingDataGA.onEvent("TaskEvent", map);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("领取每日任务").setAction("" + getOpenLevel()).setLabel("任务id:" + id).build());
    }

    private static void eventUnLockMonster(int monsterId) {
        Map<String, Object> map = new HashMap<>();
        map.put("monsterId", "monsterId:" + monsterId);
        TalkingDataGA.onEvent("UnLockMonster", map);
    }

    private static void eventBuyPhy() {
        Map<String, Object> map = new HashMap<>();
        map.put("buy", "1");
        TalkingDataGA.onEvent("买体力", map);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("买体力").setAction("" + getOpenLevel()).build());
    }

    private static void eventshop(int index) {
        Object[] temp = {"特殊商品", "金币", "水晶"};
        Map<String, Object> map = new HashMap<>();
        map.put("当前点击的按钮", temp[index]);
        TalkingDataGA.onEvent("商店按钮", map);
    }

    private static void eventWiujin2() {
    }

    private static void eventDuizhan() {
        Map<String, Object> map = new HashMap<>();
        map.put("对战模式", "1");
        TalkingDataGA.onEvent("对战", map);
        Tracker t = mInstance.getTracker(TrackerName.APP_TRACKER);
        t.send(new HitBuilders.EventBuilder().setCategory("对战模式").setAction("" + getOpenLevel()).build());
    }

    private static void eventDuizhan2(int param) {
    }

    public static void showJfq(String v) {
    }

    private static void showInsertName(String name) {
        LayoutInflater factory = LayoutInflater.from(mInstance);
        View myView = factory.inflate(R.layout.edit_alert_insertname, (ViewGroup) null);
        AlertDialog.Builder builder = new AlertDialog.Builder(mInstance);
        builder.setView(myView);
        builder.setTitle("提示");
        final EditText edit = (EditText) myView.findViewById(R.id.editname);
        edit.setText(name);
        builder.setNegativeButton("确定", new DialogInterface.OnClickListener() { // from class: com.yunva.monsterhunter.MonsterHunter.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                String names = edit.getText().toString();
                MonsterHunter.setPlayerName(names);
            }
        });
        builder.setPositiveButton("取消", new DialogInterface.OnClickListener() { // from class: com.yunva.monsterhunter.MonsterHunter.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        });
        builder.setCancelable(false);
        builder.create().show();
    }

    private static int isInstallGame(String pkgName) {
        return 1;
    }

    private static void toPlayStore(final String packageName) {
        mInstance.runOnUiThread(new Runnable() { // from class: com.yunva.monsterhunter.MonsterHunter.12
            @Override // java.lang.Runnable
            public void run() {
                Intent in = new Intent();
                in.setAction("android.intent.action.VIEW");
                Uri uri = Uri.parse("https://play.google.com/store/apps/details?id=" + packageName + "&referrer=utm_source%3Dcustom_hutui_mh1%26utm_medium%3Dbanner%26utm_term%3Dhutui_mh1%26utm_content%3Dhutui_mh1%26utm_campaign%3Dhutui_mh1");
                in.setData(uri);
                in.setPackage("com.android.vending");
                try {
                    MonsterHunter.mInstance.startActivity(in);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public static void tdEvent(String eventid, String param) {
        Log.i("tag", "eventid:" + eventid + ":param:" + param);
        String[] params = param.split(";");
        Map<String, String> p = new HashMap<>();
        for (String str : params) {
            String[] mp = str.split(",");
            if (mp.length >= 2) {
                p.put(mp[0], mp[1]);
            } else {
                return;
            }
        }
        TalkingDataGA.onEvent(eventid, p);
    }

    private static void moreGame() {
        sHandler.obtainMessage(ID_REQUEST_MOREGAME).sendToTarget();
    }

    private static void requestFBView() {
        sHandler.obtainMessage(ID_REQUEST_REQUESTFBVIEW).sendToTarget();
    }

    private static void openFbView() {
        mInstance.runOnUiThread(new Runnable() { // from class: com.yunva.monsterhunter.MonsterHunter.13
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                Uri content_url = Uri.parse("https://www.facebook.com/bravefightermonsterhunter");
                intent.setData(content_url);
                MonsterHunter.mInstance.startActivity(intent);
            }
        });
    }

    private static void openTweeterView() {
        mInstance.runOnUiThread(new Runnable() { // from class: com.yunva.monsterhunter.MonsterHunter.14
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                Uri content_url = Uri.parse("https://twitter.com/JoynowStudio");
                intent.setData(content_url);
                MonsterHunter.mInstance.startActivity(intent);
            }
        });
    }

    private static int getYear() {
        Date date = new Date();
        return date.getYear() + 1900;
    }

    private static int getMonth() {
        Date date = new Date();
        return date.getMonth();
    }

    private static int getDate() {
        Date date = new Date();
        return date.getDate();
    }

    private static int getWeekDay() {
        Date date = new Date();
        return date.getDay();
    }

    private static int getHour() {
        Date date = new Date();
        return date.getHours();
    }

    private static int getMinutes() {
        Date date = new Date();
        return date.getMinutes();
    }

    private static int getSecond() {
        Date date = new Date();
        return date.getSeconds();
    }

    public static void cheackOtherAds() {
        float timedelta = System.currentTimeMillis() - m_startTime;
        if (timedelta / 1000.0f >= 40.0f) {
            if (UnityAds.isInitialized() || VunglePub.getInstance().isInitialized()) {
                if (mCurlanguage == 1) {
                    Toast.makeText(mInstance, "no available ads", 1).show();
                } else {
                    Toast.makeText(mInstance, "沒有可用的廣告...", 1).show();
                }
            }
        }
    }

    private static void showCCError(String msg) {
        sHandler.obtainMessage(ID_REQUEST_SHOWERROR, msg).sendToTarget();
    }

    private static void showVedioAds() {
        sHandler.obtainMessage(ID_REQUEST_SHOWVEDIOADS).sendToTarget();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        runOnGLThread(new Runnable() { // from class: com.yunva.monsterhunter.MonsterHunter.15
            @Override // java.lang.Runnable
            public void run() {
                MonsterHunter.keyBack();
            }
        });
        return true;
    }

    synchronized Tracker getTracker(TrackerName trackerId) {
        if (!this.mTrackers.containsKey(trackerId)) {
            GoogleAnalytics analytics = GoogleAnalytics.getInstance(this);
            analytics.getLogger().setLogLevel(0);
            Tracker t = analytics.newTracker("UA-63388727-1");
            t.enableAdvertisingIdCollection(true);
            this.mTrackers.put(trackerId, t);
        }
        return this.mTrackers.get(trackerId);
    }
}
