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
.style4 {font-size: 24px}
.style7 {
	font-size: 16px;
	font-weight: bold;
	color: #FF0000;
}
.style8 {
	color: #FF0000;
	font-weight: bold;
}
.style9 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
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
          <p>
            <%
		  	
			try 
			{
		  		String file = request.getParameter("t1");
				String trapdoor=request.getParameter("t12");
				String sk=request.getParameter("t13");
				
				String ct="",sk1="",pkey1="",pkey2="",cloudsk="";
				String user=(String) application.getAttribute("rname");
				String strQuery1 = "select * from cloudserver where fname='"+file+"'";
				String strQuery2 = "select * from cloudserver where fname='"+file+"' and  trapdoor='"+trapdoor+"'";
				//String strQuery3 = "select * from request where fname='"+file+"' and user='"+user+"'";
								String str="Attacked";
								String str1="File Attack";
				
					ResultSet rs1 = connection.createStatement().executeQuery(strQuery1);
					if(rs1.next()==true)
					{
							ResultSet rs2 = connection.createStatement().executeQuery(strQuery2);
							if(rs2.next()==true)
							{
								ct=rs2.getString(3);
								
								pkey1=rs2.getString(9);
								pkey2=rs2.getString(10);
								
								sk1=pkey1+pkey2;
							/*	out.print(sk1);
								out.print(cloudsk);*/

								if(sk1.equalsIgnoreCase(sk))
								{
						
							
									String rank=rs2.getString(5);
									
									int updaterank = Integer.parseInt(rank)+1;
									String strQuer = "update cloudserver set rank='"+updaterank+"' where fname='"+file+"'";
									connection.createStatement().executeUpdate(strQuer);
									
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				
									Date now = new Date();
				
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;	
									
									
									String task="Download";
									String Query2 = "insert into transaction(user,fname,sk,task,dt) values('"+user+"','"+file+"','"+sk+"','"+task+"','"+dt+"')";
									connection.createStatement().executeUpdate(Query2);
									
									
									String keys = "ef50a0ef2c3e3a5f";
									byte[] keyValue1 = keys.getBytes();
									Key key1 = new SecretKeySpec(keyValue1,"AES");
									Cipher c1 = Cipher.getInstance("AES");
									c1.init(Cipher.DECRYPT_MODE, key1);
									String decryptedValue = new String(Base64.decode(ct.getBytes()));
									%>
		  </p>
									  <p align="center" class="style7">Decrypted File Contents</p>
									  <label>
									  <div align="center">
										<textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
										<br/>
										<br/>
										<td><button onclick="saveTextAsFile()">Download</button></td>
									  </div>
									  </label>
									  <p align="center">&nbsp; </p>
									<%
								}
								else
								{
								
										SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
										SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
										
										Date now = new Date();
										
										String strDate = sdfDate.format(now);
										String strTime = sdfTime.format(now);
										String dt = strDate + "   " + strTime;

										String strQuer1 = "insert into attacker(user,fname,sk,dt,attacktype) values('"+user+"','"+file+"','"+sk+"','"+dt+"','"+str1+"')";
										connection.createStatement().executeUpdate(strQuer1);
										
										String que="update cloudserver set fstatus='"+str+"' where fname='"+file+"' and  trapdoor='"+trapdoor+"'";
										connection.createStatement().executeUpdate(que);
										%>
										</p>
										<h1 class="style9">SecretKey Not Matched with Original SK in CLOUD !!!</h1>
										</p>
										<%
					
								 }			
									
							}
							else
							{
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
								Date now = new Date();
				
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
						

								String strQuer2 = "insert into attacker(user,fname,sk,dt,attacktype) values('"+user+"','"+file+"','"+sk+"','"+dt+"','"+str1+"')";
								connection.createStatement().executeUpdate(strQuer2);
								
								String q1="update cloudserver set fstatus='"+str+"' where fname='"+file+"' and  trapdoor='"+trapdoor+"'";
								connection.createStatement().executeUpdate(q1);
								%>
								  <h1 class="style4 style8">HMAC Mismatch !!!</h1>
								  </p>
								  <br />
								  <p><a href="ReceiverMain.jsp">Back</a></p>
								  <%
							}
					}
					else
					{
						
						%>
						<h1 class="style9">File Doesn't Exist !!!</h1>
						</p>
						<br />
						<p><a href="ReceiverMain.jsp">Back</a></p>
						<%
					}
        	connection.close();
	  } 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%>
        </div>
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
            <li><a href="r_RequestDecrypt.jsp">Request For Decrypt Permission</a></li>
            <li><a href="r_ResponseDecrypt.jsp">View Decrypt Response </a></li>
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
