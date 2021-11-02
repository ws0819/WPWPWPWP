package wine.service;

import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class CheckSnsService {
	
   public String certificationUser_tel(String user_tel) {
      
      String api_key="NCSMBGBERMLFJ0US";
      String api_secret="GNNL5RQNEYQZ5ASYKVBQMPKCVCFA4HNY";
      Message coolsms=new Message(api_key,api_secret);

      Random random = new Random(); 
      String numStr=""; 
      for(int i=0; i<4; i++) {
      String ran=Integer.toString(random.nextInt(10));
      numStr+=ran; 
      }
      
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", user_tel);    // 수신전화번호 user_tel로?
        params.put("from", "01045131642");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
        params.put("type", "SMS");
        params.put("text", "WINE EASY 휴대폰인증 번호입니다.  인증번호는" + "["+numStr+"]" + "입니다.");
        params.put("app_version", "test app 1.2"); // application name and version

        try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
        }
        
        return numStr;
   }

}