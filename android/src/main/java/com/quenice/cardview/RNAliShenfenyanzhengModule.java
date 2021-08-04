
package com.quenice.cardview;

import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.android.verify.sdk.ServiceFactory;
import com.alipay.mobile.android.verify.sdk.interfaces.ICallback;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import java.util.Map;

public class RNAliShenfenyanzhengModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNAliShenfenyanzhengModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
public String getName() {
  return "RNAliShenfenyanzheng";
}

private String certifyId;
private String bizCode;
@ReactMethod
public void getBizCode(final Promise promise) {
  bizCode = ServiceFactory.build().getBizCode(reactContext);
  promise.resolve(bizCode);
}



@ReactMethod
public void verifiy(String  url, String acertifyId, String abizCode){
  // 封装认证数据
  certifyId =acertifyId;
  bizCode = abizCode;//ServiceFactory.build().getBizCode(reactContext);
  JSONObject requestInfo = new JSONObject();
  requestInfo.put("url", url);
  requestInfo.put("certifyId", certifyId);
  requestInfo.put("bizCode", bizCode);


//     发起认证
  ServiceFactory.build().startService(reactContext.getCurrentActivity(), requestInfo, new ICallback() {
    @Override
    public void onResponse(Map<String, String> response) {
      String responseCode = response.get("resultStatus");
      if ("9001".equals(responseCode)) {
        // 9001需要等待回调/回前台查询认证结果
      }

    }
  });
}
}