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
<title>Cloud Server(View Attackers)</title>
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
.style24 {color: #FF0000}
.style25 {font-size: 14px; font-weight: bold; color: #FFFF00; }
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
          <li class="active"><a href="CloudMain.jsp"><span>Cloud Server </span></a></li>
          <li><a href="CloudLogin.jsp">Logout</a></li>
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
          <h2>View File Attackers :  </h2>
          <p>&nbsp;</p>
          <table width="602" border="1" align="center">
            <tr>
              <td width="104" height="31" bgcolor="#FF0000"><div align="center" class="style25">User ID </div></td>
              <td width="124" bgcolor="#FF0000"><div align="center" class="style25">User Name </div></td>
              <td width="108" bgcolor="#FF0000"><div align="center" class="style25">File Name </div></td>
              <td width="171" bgcolor="#FF0000"><div align="center" class="style25">Secret Key </div></td>
              <td width="110" bgcolor="#FF0000"><div align="center" class="style25">Date &amp; Time</div></td>
            </tr>
            <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		String query="select * from attacker"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s3=rs.getString(2);
		s4=rs.getString(3);
		s5=rs.getString(4);
		s6=rs.getString(5);
		
	
		%>
            <tr>
              <td height="29"><div align="center" class="style24"><%=i%></div></td>
              <td><div align="center" class="style24"><%=s3%></div></td>
              <td><div align="center" class="style24"><%=s4%></div></td>
              <td><div align="center" class="style24"><%=s5%></div></td>
              <td><div align="center" class="style24"><%=s6%></div></td>
            </tr>
            <%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
          <p>&nbsp;</p>
          <p><a href="CloudMain.jsp">Back</a></p>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="CloudMain.jsp"><span>Home </span></a></li>
            <li><a href="c_ViewSendersSDI.jsp"><span>View All Sender(Owners)  </span></a></li>
            <li><a href="c_ViewReceiversSDI.jsp"><span>View All Receiver(Users) I </span></a></li>
            <li><a href="c_ViewAllFiles.jsp">View All Files  </a></li>
            <li><a href="c_ViewOwnerSK.jsp">View All Owner SK for Corresponding FIles </a></li>
            <li><a href="c_ViewFileWithDecrypt.jsp">View All Files With Decrypted Options </a></li>
            <li><a href="c_ViewTransaction.jsp">View All Transactions </a></li>
            <li><span class="style24"><a href="c_ViewResults.jsp">View Results </a></span></li>
            <li><a href="CloudLogin.jsp"><span>Logout</span></a></li>
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
