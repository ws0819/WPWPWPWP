package wine.DAO;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiDAO {

   @RequestMapping("/product/kakaopay/")
   @ResponseBody
   public String kakaopay(HttpServletRequest request) {
      try {
         URL address= new URL("https://kapi.kakao.com/v1/payment/ready");
         HttpURLConnection connect = (HttpURLConnection)address.openConnection();
         connect.setRequestMethod("POST");
         connect.setRequestProperty("Authorization", "KakaoAK 5afc6b14c77c005c92daa2d42fc653c2");
         connect.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
         connect.setDoOutput(true);
         String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=WineItems&quantity=1&total_amount=2200"
               + "&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:"+request.getLocalPort()+"/WineProject/product/checkout&fail_url=http://localhost:"+request.getLocalPort()+"/WineProject/product/checkout&cancel_url=http://localhost:"+request.getLocalPort()+"/WineProject/product/checkout";
         OutputStream output = connect.getOutputStream();
         DataOutputStream dataoutput = new DataOutputStream(output);
         dataoutput.writeBytes(parameter);
         dataoutput.flush();
         dataoutput.close();
         
         int fin= connect.getResponseCode();
         
         InputStream input;
         
         if(fin == 200) {
            input = connect.getInputStream();
         }else {
            input = connect.getErrorStream();
         }
         InputStreamReader reader= new InputStreamReader(input);
         BufferedReader Breader = new BufferedReader(reader);
         
         return Breader.readLine();
      } catch (Exception e) {
         // TODO: handle exception
      }
      return "product/checkout_pro";
   }
   
}