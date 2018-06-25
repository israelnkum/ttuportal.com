package com.studentmodal.org;

import javax.mail.*;
import javax.mail.internet.*;
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

}
