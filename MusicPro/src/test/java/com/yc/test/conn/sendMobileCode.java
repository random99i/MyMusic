package com.yc.test.conn;

import org.junit.Test;

import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class sendMobileCode {

	@Test
	public void sendMobileCoder() {
		
	    String rusult = null;
	    // 官网的URL
	    String url = "http://gw.api.taobao.com/router/rest";
	    // 成为开发者，创建应用后系统自动生成
	    String appkey = "23641495";
	    String secret = "dd4c95eb3aa6af0d5b6b9a2bc13a948f";
	    int code =(int)(Math.random()*(9999-1000+1))+1000 ;
	    String product = "心悦音乐";
	    TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
	    AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
	    req.setExtend("123456");	
	    req.setSmsType("normal");
	    req.setSmsFreeSignName("心悦音乐");
	    req.setSmsParamString("{\"code\":\""+code+"\",\"product\":\""+product+"\"}");
	    req.setRecNum("18216062440");
	    req.setSmsTemplateCode("SMS_48005104");
	    try {
	        AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
	        System.out.println(rsp.getBody());  
	        rusult = rsp.getSubMsg();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    System.out.println(rusult);
	    System.out.println(code);
	}

}
