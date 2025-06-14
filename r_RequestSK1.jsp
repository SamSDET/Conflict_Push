<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Receiver(Request SK)</title>
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
.style26 {font-size: 10px; }
.style28 {
	font-size: 16px;
	font-weight: bold;
	color: #FF0000;
}
.style29 {
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
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ReceiverMain.jsp"><span>Home </span></a></li>
            <li><a href="r_Search.jsp"><span>Search Files </span></a></li>
            <li><a href="r_ViewFiles.jsp">View Files </a></li>
            <li><a href="r_ResponseSK.jsp">View Secret Key Response</a></li>
            <li><a href="r_RequestDecrypt.jsp">Request For Decrypt Permission</a></li>
            <li><a href="r_ResponseDecrypt.jsp">View Decrypt Response </a></li>
            <li><a href="r_Download.jsp"><span>Download</span></a></li>
            <li><a href="ReceiverLogin.jsp"><span>Logout</span></a></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="mainbar">
        <div class="article">
          <h2>Request Secret Key  :  </h2>
          <p>
            <%
String fname = request.getParameter("t14");
String uname=(String)application.getAttribute("rname");
String generate ="Generate Key";
String s="null",owner="";


String query="select * from request  where user='"+uname+"' and fname='"+fname+"'"; 
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery(query);

	if ( rs.next())
	{
		%>
          </p>
          <p class="style28 style29">Request Already Sent To Private Key Generator !!!</p>
          <p class="style28"><a href="ReceiverMain.jsp" class="style26">BACK</a></p>
          <p class="style29">
            <%	
	}
	else
	{
		String query1="select * from cloudserver  where fname='"+fname+"' "; 
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(query1);
	
	
		if ( rs1.next())
		{
			String query2="select * from request  where user='"+uname+"' and fname='"+fname+"' "; 
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(query2);
			if(rs2.next())
			{
				String query3="update request set status='"+generate+"' where user='"+uname+"' and fname='"+fname+"'";
				connection.createStatement().executeUpdate(query3);
				%>
          </p>
          <p class="style28">Request Sent To Private Key Generator !!! </p>
          <p class="style29"><a href="ReceiverMain.jsp" class="style26">BACK</a></p>
          <span class="style29">
          <%
			}
			else
			{				ResultSet rss1=connection.createStatement().executeQuery("select downer from cloudserver where fname='"+fname+"'");
							if(rss1.next())
							{
								owner=rss1.getString(1);
							}
				String query4="insert into request(user,owner,fname,status) values('"+uname+"','"+owner+"','"+fname+"','"+generate+"')";
				connection.createStatement().executeUpdate(query4); %>
          </span>
          <p class="style28">Request Sent To Private Key Generator !!! </p>
          <p class="style28"><a href="ReceiverMain.jsp" class="style26">BACK</a></p>
          <span class="style29">
          <%
			}
		}
		else
		{
%>
            <label>
          </span>
          <p class="style28"><br />
            File Doesn't Exist !!! </p>
              <p><a href="ReceiverMain.jsp" class="style26">BACK</a></p>
              <p>
            <%
		}
	}
%></p>
        </div>
        <p class="pages">&nbsp;</p>
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
