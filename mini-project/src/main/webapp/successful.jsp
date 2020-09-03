<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.util.*,javax.mail.*" %>
    <%@page import = "javax.mail.internet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successful Message</title>
</head>
<body>

<%

String result1;
String to1 = request.getParameter("email");

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
      
    
	message1.setSubject("Successful Registration.");
	message1.setText("You are successfully registered. And your userid is "+request.getParameter("username")+" and " + "password is "+ request.getParameter("password"));
	Transport.send(message1);
	
	
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Successfully registered and an email has been send to your email with your username and password.');");
	   out.println("location='index.jsp';");
	   out.println("</script>");
	


}catch(MessagingException m)
{
	m.printStackTrace();
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Message send failed');");
	   out.println("location='index.jsp';");
	   out.println("</script>");
	
}
%>

<div>
<button onclick = "ïndex.jsp">OK</button>
 </div>>
</body>
</html>