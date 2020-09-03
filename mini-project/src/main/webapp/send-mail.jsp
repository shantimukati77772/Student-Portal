<%@page import="javax.mail.internet.MimeMessage.RecipientType"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.util.*,javax.mail.*" %>
    <%@page import = "javax.mail.internet.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mail</title>
</head>
<body>
<%

String result;
String[] to = request.getParameterValues("student_emailf");


final String from = "pk88267@gmail.com";
final String pass = "7979742193@Pk";
final String host = "smtp.gmail.com";

Properties properties = new Properties();

properties.put("mail.smtp.host",host);
properties.put("mail.transport.protocol","smtp");
properties.put("mail.smtp.auth",true);

properties.put("mail.user",from);
properties.put("mail.password",pass);
properties.put("mail.port","587");
properties.put("mail.smtp.starttls.enable", "true");

Session mailSession=Session.getInstance(properties,new javax.mail.Authenticator(){
	
@Override

protected PasswordAuthentication getPasswordAuthentication(){
	return new PasswordAuthentication(from,pass);
}
	
});
try{
	MimeMessage message = new MimeMessage(mailSession);
	message.setFrom(new InternetAddress(from));
	  if (to.length > 0) {
          for (String toList : to) {
           
                  message.addRecipient(Message.RecipientType.TO, new InternetAddress(toList));
      
          }
      }
	
	message.setSubject("Regarding Mentor Assign.");
	message.setText("You have been assigned under the mentorship of mentor "+request.getParameter("faculty_name")+"."+"You can connect with his/her email id provided here. "+request.getParameter("faculty_email"));
	Transport.send(message);
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Message send successfully');");
	   out.println("location='admin.jsp';");
	   out.println("</script>");
}catch(MessagingException m)
{
	m.printStackTrace();
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Message send failed');");
	   out.println("location='faculty_manager.jsp';");
	   out.println("</script>");
	
}
%>

<%

String result2;
String[] to2 = request.getParameterValues("student_emails");


final String from2 = "pk88267@gmail.com";
final String pass2 = "7979742193@Pk";
final String host2 = "smtp.gmail.com";

Properties properties2 = new Properties();

properties2.put("mail.smtp.host",host2);
properties2.put("mail.transport.protocol","smtp");
properties2.put("mail.smtp.auth",true);

properties2.put("mail.user",from2);
properties2.put("mail.password",pass2);
properties2.put("mail.port","587");
properties2.put("mail.smtp.starttls.enable", "true");

Session mailSession2=Session.getInstance(properties,new javax.mail.Authenticator(){
	
@Override

protected PasswordAuthentication getPasswordAuthentication(){
	return new PasswordAuthentication(from2,pass2);
}
	
});
try{
	MimeMessage message2 = new MimeMessage(mailSession2);
	message2.setFrom(new InternetAddress(from2));
	  if (to2.length > 0) {
          for (String toList : to2) {
           
                  message2.addRecipient(Message.RecipientType.TO, new InternetAddress(toList));
      
          }
      }
	
	message2.setSubject("Regarding Mentor Assign.");
	message2.setText("You have been assigned under the mentorship of mentor "+request.getParameter("faculty_name")+"."+"You can connect with his/her email id provided here. "+request.getParameter("faculty_email"));
	Transport.send(message2);
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Message send successfully');");
	   out.println("location='admin.jsp';");
	   out.println("</script>");
}catch(MessagingException m)
{
	m.printStackTrace();
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Message send failed');");
	   out.println("location='faculty_manager.jsp';");
	   out.println("</script>");
	
}
%>

<%

String result3;
String[] to3 = request.getParameterValues("student_emailt");


final String from3 = "pk88267@gmail.com";
final String pass3 = "7979742193@Pk";
final String host3 = "smtp.gmail.com";

Properties properties3 = new Properties();

properties3.put("mail.smtp.host",host3);
properties3.put("mail.transport.protocol","smtp");
properties3.put("mail.smtp.auth",true);

properties3.put("mail.user",from3);
properties3.put("mail.password",pass3);
properties3.put("mail.port","587");
properties3.put("mail.smtp.starttls.enable", "true");

Session mailSession3=Session.getInstance(properties,new javax.mail.Authenticator(){
	
@Override

protected PasswordAuthentication getPasswordAuthentication(){
	return new PasswordAuthentication(from3,pass3);
}
	
});
try{
	MimeMessage message3 = new MimeMessage(mailSession3);
	message3.setFrom(new InternetAddress(from3));
	  if (to3.length > 0) {
          for (String toList : to3) {
           
                  message3.addRecipient(Message.RecipientType.TO, new InternetAddress(toList));
      
          }
      }
	
	message3.setSubject("Regarding Mentor Assign.");
	message3.setText("You have been assigned under the mentorship of mentor "+request.getParameter("faculty_name")+"."+"You can connect with his/her email id provided here. "+request.getParameter("faculty_email"));
	Transport.send(message3);
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Message send successfully');");
	   out.println("location='admin.jsp';");
	   out.println("</script>");
}catch(MessagingException m)
{
	m.printStackTrace();
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Message send failed');");
	   out.println("location='faculty_manager.jsp';");
	   out.println("</script>");
	
}
%>



<%

String result1;
String to1 = request.getParameter("faculty_email");

final String from1 = "pk88267@gmail.com";
final String pass1 = "7979742193@Pk";
final String host1 = "smtp.gmail.com";

Properties properties1 = new Properties();

properties1.put("mail.smtp.host",host1);
properties1.put("mail.transport.protocol","smtp");
properties1.put("mail.smtp.auth",true);

properties1.put("mail.user",from1);
properties1.put("mail.password",pass1);
properties1.put("mail.port","587");
properties1.put("mail.smtp.starttls.enable", "true");

Session mailSession1=Session.getInstance(properties1,new javax.mail.Authenticator(){
	
@Override

protected PasswordAuthentication getPasswordAuthentication(){
	return new PasswordAuthentication(from1,pass1);
}
	
});
try{
	MimeMessage message1 = new MimeMessage(mailSession1);
	message1.setFrom(new InternetAddress(from1));
	  
                  message1.addRecipient(Message.RecipientType.TO, new InternetAddress(to1));
      
    
	message1.setSubject("Regarding Student list.");
	message1.setText("You are the mentor of following students. Name and Email-id provided in this email :\n  " +request.getParameter("student_listf")+" "+request.getParameter("student_emailf") + "\n " + request.getParameter("student_lists")+ " " +request.getParameter("student_emails")+ "\n " +request.getParameter("student_listt")+" "+request.getParameter("student_emailt"));
	Transport.send(message1);
	result = "message send successfully";
}catch(MessagingException m)
{
	m.printStackTrace();
	result = "unable to send message........";
	
}

%>


</body>
</html>