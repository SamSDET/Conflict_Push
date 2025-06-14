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
<title>Attacker (Edit)</title>
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
.style21 {font-size: 14px}
.style10 {color: #504b4b}
.style7 {font-size: 16px}
.style29 {color: #FFFF00}
.style30 {font-size: 14px; color: #FFFF00; }
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>
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
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="attacker.jsp"><span>Attacker</span></a></li>
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
          <h2>Hack Files   :  </h2>
          <p>&nbsp;</p>
		  
		  
		   
          <label></label>
          <form id="form1" name="form1" method="post" action="a_Update2.jsp">
            <label>
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13,decryptedValue="";
	int i=0,j=0,k=0;
	String fname=request.getParameter("tt");	
	try 
	{
		String query="Select *from cloudserver where fname='"+fname+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		while ( rs.next() )
		{
			i=rs.getInt(1);
			s2=rs.getString(2);
			s7=rs.getString(3);
			s3=rs.getString(4);
			s4=rs.getString(6);
			s5=rs.getString(7);
			s6=rs.getString(8);
			s8=rs.getString(9);
			
			String keys = "ef50a0ef2c3e3a5f";
				byte[] keyValue1 = keys.getBytes();
				Key key1 = new SecretKeySpec(keyValue1,"AES");
				Cipher c1 = Cipher.getInstance("AES");
				c1.init(Cipher.DECRYPT_MODE, key1);
				decryptedValue = new String(Base64.decode(s7.getBytes()));
		}	
			%>
			<br />
			</label>
			</span> </label>
			<table width="568" border="0" align="center">
			
			<tr>
			<td width="159" height="28" bgcolor="#FF0000"><div align="center" class="style21 style29">
			<div align="left"><strong>File Name : </strong></div>
			</div></td>
			<td width="393"><input name="fname" type="text" size="50" value="<%=s2%>" />                </td>
			</tr>
			<tr>
			<td height="28" bgcolor="#FF0000"><div align="center" class="style30">
			<div align="left"><strong>Contents :</strong></div>
			</div></td>
			<td><label>
			<textarea rows="10"  cols="50"  name="cont"><%=decryptedValue%></textarea>
			</label>                </td>
			</tr>
			</table>
			<span class="style10">
			<label for="name"><br />
			</label>
			</span>
			<label></label>
			<label> 
			<div align="center"><br />
		      <br />
		      <br />
		      <input type="submit" name="Submit" value="Hack File" />
		    </div>
			</label>
		  </form>
			<label>
			</label>
			</form>
			
			<%  
			
			connection.close();
	}
	
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
	
	%>
         
          <p class="style7">
            <!-- end of center content -->
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
         <ul class="sb_menu">
            <li><a href="attacker.jsp"><span>Home </span></a></li>
            <li><a href="index.html"><span>Back</span></a></li>
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
