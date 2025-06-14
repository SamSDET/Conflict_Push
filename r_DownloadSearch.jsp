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
<title>Receiver(Download)</title>
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
.style6 {font-size: 14px; color: #FFFF00; font-weight: bold; }
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
          <h2>Download  :  </h2>
          <p>&nbsp;</p>
          <p>
            <%
		  
		  	String fname = request.getParameter("fname");
			String user=(String)application.getAttribute("rname");
			String yes="Permitted";
			
			String query1="select * from request  where user='"+user+"' and decrypt='"+yes+"'"; 
       		Statement st1=connection.createStatement();
       		ResultSet rs1=st1.executeQuery(query1);
		   
			if ( rs1.next() )
	 		{
	   	%>
</p>
          <form action="r_Download1.jsp" method="post" name="form1" id="form1">
            <table width="473" border="0" align="center">
              <tr>
                <td width="223" bgcolor="#FF0000"><span class="style6">Enter File Name :-</span></td>
                <td width="245"><label>
                  <input required="required" name="t1" type="text" value="<%=fname%>" size="40" />
                </label></td>
              </tr>
              <tr>
                <td height="34" bgcolor="#FF0000"><span class="style6">HMAC :-</span></td>
                <td><input name="t12" type="text" size="40" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style6">Secret Key :-</span></td>
                <td><input name="t13" type="text" size="40" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><div align="right">
                    <input type="submit" name="Submit" value="Req Trapdoor" />
                </div></td>
                <td><label>
                  <input type="submit" name="Submit2" value="Download" />
                </label></td>
              </tr>
            </table>
          </form>
          <%
	  		}else
			{
			%>
          <p></p>
          <h2>You Don't Have Permission To View !!!</h2>
          </p>
          <br />
          <p><a href="UserMain.jsp"></a></p>
          <%	}	
			
		  %>
          <a href="ReceiverMain.jsp">Back</a>
          <p>&nbsp;</p>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ReceiverMain.jsp"><span>Home </span></a></li>
            <li><a href="r_ViewFiles.jsp">View Files </a></li>
            <li><a href="r_RequestSK.jsp">Request Secret Key </a></li>
            <li><a href="r_ResponseSK.jsp">View Secret Key Response</a></li>
            <li><a href="r_RequestDecrypt.jsp">Request For Decrypt Permission</a></li>
            <li><a href="r_ResponseDecrypt.jsp">View Decrypt Response </a></li>
            <li><a href="r_Download.jsp"><span>Download</span></a></li>
            <li><a href="ReceiverLogin.jsp"><span>Logout</span></a></li>
            <li></li>
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
