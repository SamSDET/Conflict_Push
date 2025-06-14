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
<title>Sender(Update)</title>
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
.style10 {color: #504b4b}
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {
	font-size: 12px;
	color: #FF0000;
}
.style28 {color: #5f5f5f}
.style7 {font-size: 16px}
.style9 {font-size: 11px}
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
          <h2>Update Files   :  </h2>
          <p>&nbsp;</p>
          <%
			  
			  //String fnam =(String)request.getParameter("fnam");
				int uid = Integer.parseInt(request.getParameter("usid"));
      			String keys = "ef50a0ef2c3e3a5f";
			  %>
          <form action="s_Update1.jsp?usid=<%=uid%>" method="post" id="leavereply">
            <span class="style10">
            <label for="name"><br />
			<%
			String query1="select * from cloudserver  where id='"+uid+"' "; 
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(query1);
	
	
		while ( rs1.next())
		{	
			String ct=rs1.getString(3);
			
				byte[] keyValue1 = keys.getBytes();
				Key key1 = new SecretKeySpec(keyValue1,"AES");
				Cipher c1 = Cipher.getInstance("AES");
				c1.init(Cipher.DECRYPT_MODE, key1);
				String decryptedValue = new String(Base64.decode(ct.getBytes()));

			%>
			
            <br />
            </label>
            </span>
            <table width="553" border="0" align="center">
              <tr>
                <td width="286"><span class="odd style14 style28"><span class="odd style11 style16"> Select File :</span></span></td>
                <td width="356"><input type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><textarea name="text" id="textarea" cols="50" rows="15"><%=decryptedValue%></textarea></td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><input type="submit" name="Submit" value="Update" /></td>
              </tr>
            </table>
			<%}%>
          </form>
          <%
			  
try {
		
      		String cont=request.getParameter("text");
			String dname=(String)application.getAttribute("sname");
			String file=(String)application.getAttribute("fname");

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
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
				
				Statement st=connection.createStatement();
				String task="Update";
				
				
st.executeUpdate("update cloudserver set ct='"+encryptedValue+"' where id='"+uid+"'");
st.executeUpdate("update ownerfiles set ct='"+encryptedValue+"' where id='"+uid+"'");
st.executeUpdate("insert into transaction(user,fname,task,dt) values('"+dname+"','"+file+"','"+task+"','"+dt+"')");

			%>
          <p></p>
          <h2>Data Updated Successfully !!!</h2>
          </p>
          <a href="SenderMain.jsp">Back</a><br />
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
          <a href="index.html" class="style9"></a></p>
          <p>&nbsp;</p>
          <p><a href="SenderMain.jsp">Back</a></p>
          <p>&nbsp;</p>
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
            <li><a href="s_Delete.jsp"><span>Delete Files </span></a></li>
            <li><a href="s_ViewFiles.jsp"><span>View My Files </span></a></li>
            <li><a href="s_RecoverFiles.jsp"><span>Verify My  Files </span></a></li>
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
