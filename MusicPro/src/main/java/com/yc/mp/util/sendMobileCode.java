package com.yc.mp.util;

import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class sendMobileCode {
	
	private Integer code;
	// 官网的URL
	private static String url = "http://gw.api.taobao.com/router/rest";
	// 成为开发者，创建应用后系统自动生成
	private static String appkey = "23641495";
	private static String secret = "dd4c95eb3aa6af0d5b6b9a2bc13a948f";
	
	public sendMobileCode() {
	}
	
	public Integer getCode() {
		return code;
	}

	public void sendMobileCoder(String num) {
		String result = null;
		code = (int) (Math.random() * (9999 - 1000 + 1)) + 1000;
		String product = "心悦音乐";
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend("123456");
		req.setSmsType("normal");
		req.setSmsFreeSignName("心悦音乐");
		req.setSmsParamString("{\"code\":\"" + code + "\",\"product\":\"" + product + "\"}");
		req.setRecNum(num);
		req.setSmsTemplateCode("SMS_52150207");
		try {
			AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
			System.out.println(rsp.getBody());
			result = rsp.getSubMsg();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
