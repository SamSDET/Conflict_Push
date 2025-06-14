<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@page import ="java.util.*"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<%

int uid = Integer.parseInt(request.getParameter("usid"));
String fname=(String)request.getParameter("fname");
String downer=(String)request.getParameter("owner");
String generated="Generated",sk1="",sk2="";
Statement st1 = connection.createStatement();

try 

{		String query ="select * from request where fname='"+fname+"' and owner='"+downer+"' and status='"+generated+"' ";
		ResultSet rs=st1.executeQuery(query);
		if (rs.next())
		{
			String query1 ="select * from cloudserver where fname='"+fname+"' and downer='"+downer+"' ";
			ResultSet rs1=st1.executeQuery(query1);
			if (rs1.next())
			{
				sk1=rs1.getString(9);
				sk2=rs1.getString(10);
			
				String query2 ="update request set status='"+generated+"' , pkey1='"+sk1+"',pkey2='"+sk2+"' where id='"+uid+"' ";
				st1.executeUpdate (query2);
			}
		}
		else
		{	

			KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
			Cipher encoder = Cipher.getInstance("RSA"); 
			KeyPair kp = kg.generateKeyPair(); 
			PublicKey pubKey = kp.getPublic(); 
			// RSA produces 1024 bits Key
			byte[] pub = pubKey.getEncoded();
			String s = pub.toString();
			
			String pkey1=s.substring(0,5);
			String pkey2=s.substring(5);
			
			String query3 ="update request set status='"+generated+"' , pkey1='"+pkey1+"',pkey2='"+pkey2+"' where id='"+uid+"' ";
			st1.executeUpdate (query3);
			
			String query4 ="update cloudserver set sk1='"+pkey1+"' , sk2='"+pkey2+"' where fname='"+fname+"' and downer='"+downer+"' ";
			st1.executeUpdate (query4);
		}

connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
response.sendRedirect("p_ViewGenerateKey.jsp");
%>
</body></html>