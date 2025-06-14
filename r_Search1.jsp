<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random"%>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Receiver(Search)</title>
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
.style16 {color: #FFFF00}
.style17 {font-weight: bold; font-size: 24;}
.style18 {color: #FF0000}
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
          <h2>Search Files  :  </h2>
          <p>&nbsp;</p>
          <table width="590" border="1" align="center">
            <tr>
              <td width="81" height="29" bgcolor="#FF0000"><div align="center" class="style16"><span class="style17">File ID </span></div></td>
              <td width="150" bgcolor="#FF0000"><div align="center" class="style16"><span class="style17">File Name </span></div></td>
              <td width="134" bgcolor="#FF0000"><div align="center" class="style16"><span class="style17">Rank </span></div></td>
              <td width="201" bgcolor="#FF0000"><div align="center" class="style16"><span class="style17">Download</span></div></td>
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
    String user=(String)application.getAttribute("rname");


try 
    {
        
            String keyword = request.getParameter("t14");
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		byte[] keyValue = keys.getBytes();
      		Key key = new SecretKeySpec(keyValue, "AES");
      		Cipher c = Cipher.getInstance("AES");
      		c.init(Cipher.ENCRYPT_MODE, key);
      		String search = new String(Base64.encode(keyword.getBytes()));
			
			String task1="Search";
			
			String strQuery21 ="insert into transaction(user,fname,task,dt) values('"+user+"','"+keyword+"','"+task1+"','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery21);
			
			
	/*		String strQuery22 ="insert into search(user,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery22);*/
				
			String query="select * from cloudserver"; 
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
				i=rs.getInt(1);
				s2=rs.getString(2);
				s3=rs.getString(5);
				s4=rs.getString(3);
				
				c.init(Cipher.DECRYPT_MODE,key);
				String decryptedValue = new String(Base64.decode(s4.getBytes()));
				
				
				if(decryptedValue.indexOf(keyword)>0)
				{
					String strQuery1 = "select * from cloudserver where fname='"+s2+"'";
					ResultSet rs11 = connection.createStatement().executeQuery(strQuery1);
						if(rs11.next()==true)
						{
							String rank=rs11.getString(5);
							int updaterank = Integer.parseInt(rank)+1;
							String strQuery2 = "update cloudserver set rank='"+updaterank+"' where fname='"+s2+"'";
							connection.createStatement().executeUpdate(strQuery2);
						}
					%>
			</tr>
					<tr>
					<td height="28"><div align="center" class="style18"><%=i%></div></td>
					<td><div align="center" class="style18"><%=s2%></div></td>
					<td><div align="center" class="style18"><%=s3%></div></td>
					<td><div align="center" class="style18"><a href="r_DownloadSearch.jsp?fname=<%=s2%>"> <%=s2%> </a></div></td>
					</tr>
					<%}
		
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
          <p><a href="ReceiverMain.jsp">Back</a></p>
          <p>&nbsp;</p>
          <div class="clr"></div>
        </div>
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
<div align=center></div>
</body>
</html>
