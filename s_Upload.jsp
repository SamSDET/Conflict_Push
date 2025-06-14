<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Sender(Upload)</title>
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
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px}
.style28 {color: #5f5f5f}
.style29 {color: #FFFF00}
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
          <h2>Upload Files   :  </h2>
          <p>&nbsp;</p>
          <div class="img">
            <form id="form1" name="form1" method="post" action="s_Upload1.jsp">
              <p>&nbsp;</p>
              <table width="553" border="0" align="center">
                <tr>
                  <td width="286" bgcolor="#FF0000"><span class="odd style14 style28"><span class="odd style11 style16 style29"> Select File :</span></span></td>
                  <td width="356"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" class="odd style14 style28"><span class="odd style11 style16 style29">File Name :</span> </td>
                  <td><input required="required" name="tt" type="text" id="t42" size="49"/></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000"><span class="style29"></span></td>
                  <td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000"><span class="odd style11 style16 style29"><strong>HMAC :</strong></span></td>
                  <td><input name="t4" type="text" id="t4" size="49" value="" readonly="readonly" /></td>
                </tr>
                <tr>
                  <td><div align="right"></div></td>
                  <td><input type="submit" name="Submit" value="Encrypt" /></td>
                </tr>
              </table>
              <p>&nbsp;</p>
              <p><a href="SenderMain.jsp">Back</a></p>
            </form>
          </div>
          <p>&nbsp;</p>
          <p class="infopost">&nbsp;</p>
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
            <li><a href="s_Update.jsp">Update Files </a></li>
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
<div align=center></div>
</body>
</html>
