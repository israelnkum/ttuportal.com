package com.studentmodal.org;

import org.json.JSONObject;

import javax.mail.*;
import javax.mail.internet.*;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.*;
public class sendMail {

    public static void sendEmail (String address, String subject, String message){

        String from = "israelnkum@gmail.com";
        String password = "shadow_walker";
        String[] to = {address};
        String host = "smtp.gmail.com";

        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user",from);
        props.put("mail.smtp.password",password);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");


       try{
           Session session = Session.getDefaultInstance(props);
           MimeMessage msg = new MimeMessage(session);
           msg.setFrom( new InternetAddress(from));

           InternetAddress[] toAddress = new InternetAddress[to.length];
           for (int i =0; i< to.length; i++){
               toAddress[i] = new InternetAddress(to[i]);

           }

           for(int i =0; i< toAddress.length; i++){
               msg.setRecipient(Message.RecipientType.TO,toAddress[i]);
           }
           msg.setSubject(subject);
           msg.setContent(message,"text/html; charset=utf-8");
           Transport transport = session.getTransport("smtp");
           transport.connect(host,from,password);
           transport.sendMessage(msg,msg.getAllRecipients());
           transport.close();
       }catch (Exception ex){

       }



    }

    public static String password;
    public static String username;
    public static String fetchStudentPassword(String stdPassword){
        username = stdPassword;
        try{


            String webService = "http://srms.ttuportal.com/api/student/"+stdPassword+"/password";
            URL url = new URL(webService);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            connection.setRequestProperty("ACCEPT","application/json");
            if(connection.getResponseCode()== 200){
                BufferedReader br = new BufferedReader(new InputStreamReader((connection.getInputStream())));

                String output;
                System.out.println("Out is ...................");

                while ((output = br.readLine()) != null){
                  //   System.out.println(output);

                    JSONObject jsonObject = new JSONObject(output);

                    // String

                  //  String pssword = jsonObject.getString("data");
                  //  System.out.println(pssword);
                    password = jsonObject.getString("data");

                }


                connection.disconnect();
            }
        }catch (Exception e){
            System.out.println(e);
        }
        return stdPassword;
    }

}
