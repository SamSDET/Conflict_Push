<title>Authentication Page</title>
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%
   	String fname=request.getParameter("t14");      
   	String uname=(String)application.getAttribute("rname");
	String key="",sk1="",sk2="";
    try{
			String sql="SELECT * FROM request where user='"+uname+"' and fname='"+fname+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()){
			
				 sk1=rs.getString(6);
				 sk2=rs.getString(7);
				 key=sk1+sk2;
			
				response.sendRedirect("r_ResponseSK.jsp");
				application.setAttribute("key",key);
			}
			else
			{
				key="Secret Key Not Generated / File Doesn't Exist";
				response.sendRedirect("r_ResponseSK.jsp");
				application.setAttribute("key",key);
			}
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>