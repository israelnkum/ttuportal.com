import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class jsonConsume {
    public static  void main(String [] args){

        try{
            String webService = "http://srms.ttuportal.com/api/student/07162734/password";
            URL url = new URL(webService);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            connection.setRequestProperty("ACCEPT","application/json");
            if(connection.getResponseCode()== 200){
                BufferedReader br = new BufferedReader(new InputStreamReader((connection.getInputStream())));

                String output;
                 System.out.println("Out is ...................");

                 while ((output = br.readLine()) != null){
                     System.out.println(output);

                     JSONObject jsonObject = new JSONObject(output);

                    // String

                     String pssword = jsonObject.getString("data");
                     System.out.println(pssword);

                 }

                 connection.disconnect();
            }
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
