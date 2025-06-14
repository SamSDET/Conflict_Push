<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Receiver(Decrypt Request)</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-900.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style17 {font-size: 14; }
.style18 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">Efficient Auditing Scheme for Secure Data Storage<br />
        in Fog to Cloud Computing</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href=".jsp"></a></li>
          <li><a href=".jsp"></a></li>
          <li><a href=".jsp"></a></li>
          <li class="active"><a href="ReceiverMain.jsp"><span>Receiver(Bob)</span></a></li>
          <li><a href="ReceiverLogin.jsp">Logout</a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Request For Decrypt Permission  :  </h2>
          <p>&nbsp;</p>
          <form action="r_RequestDecrypt.jsp" method="post" id="leavereply">
            <div align="center">
              <p align="left" class="style17"><span class="style18">Enter File Name :&nbsp;</span>&nbsp;&nbsp;&nbsp;
                  <input name="t14" type="text" size="30" />
              </p>
              <p align="left" class="style17"><br />
                <br />
                <input type="submit" name="Submit" value="Request Decrypt Permission" />
              </p>
              <p align="left" class="style17">
                <%
	try
	{	  
		  String fname=request.getParameter("t14");
		  String user=(String)application.getAttribute("rname");
		  String str="Requested",dname="";
		  
		  String query="Select *from request where user='"+user+"' and fname='"+fname+"' and decrypt='"+str+"'";
	      Statement st=connection.createStatement();
          ResultSet rs=st.executeQuery(query);
		  if (rs.next())
		  {
		  		out.println ("<h1>Decrypt Permission Already Sent </h1>");
		  }
		  else
		  {
		  
		  	 String query1="Select * from cloudserver where fname='"+fname+"' ";	  
			 Statement st1=connection.createStatement();
			 ResultSet rs1=st1.executeQuery(query1);
			 if (rs1.next())
			 {
			
			  	 String query2="Select * from request where user='"+user+"' and fname='"+fname+"'";	  
				 Statement st2=connection.createStatement();
				 ResultSet rs2=st2.executeQuery(query2);
				 if (rs2.next())
				 {
					  String query3="update request set decrypt='"+str+"' where user='"+user+"' and fname='"+fname+"' ";
					  Statement st3=connection.createStatement();
					  st3.executeUpdate(query3);
					  out.println ("<h1>Decrypt Permission Sent Sucessfully </h1>");
				 }
				 else
				 {
				 
				 ResultSet rss1=connection.createStatement().executeQuery("select downer from cloudserver where fname='"+fname+"'");
							if(rss1.next())
							{
								dname=rss1.getString(1);
							}
					  String query3="insert into request  (user,owner,fname,decrypt) values('"+user+"','"+dname+"','"+fname+"','"+str+"')";
					  Statement st3=connection.createStatement();
					  st3.executeUpdate(query3);
					  out.println ("<h1>Decrypt Permission Sent Sucessfully </h1>");
				 }
				  
			  }
			  else
			  {
				
				  out.println ("<h1>File Not Found </h1>");
			  }
		 }
		connection.close();
	}
	catch (Exception e)
	{
		out.print(e);
	}
		  %>
              </p>
              <p align="left" class="style17"><a href="ReceiverMain.jsp">Back</a></p>
            </div>
            <label for="name"></label>
          </form>
          <p>&nbsp;</p>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ReceiverMain.jsp"><span>Home </span></a></li>
            <li><a href="r_Search.jsp"><span>Search Files </span></a></li>
            <li><a href="r_ViewFiles.jsp">View Files </a></li>
            <li><a href="r_RequestSK.jsp">Request Secret Key </a></li>
            <li><a href="r_ResponseSK.jsp">View Secret Key Response</a></li>
            <li><a href="r_ResponseDecrypt.jsp">View Decrypt Response   </a></li>
            <li><a href="r_Download.jsp"><span>Download</span></a></li>
            <li><a href="ReceiverLogin.jsp"><span>Logout</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
