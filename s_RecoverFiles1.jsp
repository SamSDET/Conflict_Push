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
<title>Sender(Recover)</title>
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
.style29 {font-size: 24px}
.style30 {
	color: #FF0000;
	font-size: 24px;
	font-weight: bold;
}
.style31 {font-size: 20px}
.style32 {font-size: 18px}
.style33 {font-size: 12px}
.style34 {
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
          <li class="active"><a href="SenderMain.jsp"><span>Sender(Alice)</span></a></li>
          <li><a href="SenderLogin.jsp">Logout</a></li>
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
          <h2 class="style34">Recover Status : </h2>
          <p class="style34">
            <%

String fname = request.getParameter("fname");
try 
{
String CLtrap="",Otrap="";
String query ="select * from cloudserver where fname='"+fname+"' ";
Statement st = connection.createStatement();
ResultSet rs=st.executeQuery(query);
if(rs.next())
{
	fname=rs.getString(2);
	CLtrap=rs.getString(4);
	
	String query2 ="select * from sdimetadata where fname='"+fname+"'";
	Statement st2 = connection.createStatement();
	ResultSet rs2=st.executeQuery(query2);
	if(rs2.next())
	{
		Otrap=rs2.getString(4);

		if(CLtrap.equals(Otrap))
		{
			%>
		  </p>
			<p class="style34">&nbsp;</p>
			<h3 class="style34 style29">File Is Safe !! </h3>
			<p class="style34"><br />
			<a href="s_RecoverFiles.jsp">Back</a>
			<%	
		}
		else
		{
			%>
			</p>
			<p class="style34">&nbsp;  </p>
			<h3 class="style30">File Is Not Safe !! </h3>
			<h3 class="style29"><span class="style34"><br />
		    <a href="s_Recover.jsp?fname=<%=fname%>" class="style32">Click Here</a><span class="style31"> To Recover File.</span></span></h3>
			<p class="style29"><a href="s_RecoverFiles.jsp" class="style33">Back</a></p>
			<%
		}
	}
	else
	{
	}
}





connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>          
          <p>&nbsp;</p>
          <div class="clr"></div>
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
            <li><a href="SenderMain.jsp"><span>Home </span></a></li>
            <li><a href="s_Upload.jsp"><span>Upload Files </span></a></li>
            <li><a href="s_Update.jsp">Update Files </a></li>
            <li><a href="s_Delete.jsp"><span>Delete Files </span></a></li>
            <li><a href="s_ViewFiles.jsp"><span>View My Files </span></a></li>
            <li><a href="SenderLogin.jsp"><span>Logout</span></a></li>
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
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
