<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Sender</title>
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
.style2 {
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
          <li class="active"><a href="index.html"><span>Home </span></a></li>
          <li><a href="SenderLogin.jsp"><span>Sender</span></a></li>
          <li><a href="ReceiverLogin.jsp">Receiver</a></li>
          <li><a href="SDILogin.jsp"><span>Fog</span></a></li>
          <li><a href="PKGLogin.jsp"><span>KGC</span></a></li>
          <li><a href="CloudLogin.jsp"><span>Cloud Server</span></a></li>
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
          <h2>Sender(Factory) Register :  </h2>
          <form action="SRegister.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><br />
            <span class="style2">Sender Name (required)<br />
            </span></label>
            <p class="style2">
              <input id="name" name="userid" class="text" />
            </p>
            <span class="style2">
            <label for="password">Password (required)<br />
            </label>
            </span>
            <p class="style2">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <span class="style2">
            <label for="email">Email Address (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style2">
            <label for="mobile">Mobile Number (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style2">
            <label for="address">Your Address<br />
            </label>
            </span>
            <p class="style2">
              <textarea name="address" cols="50" id="address"></textarea>
            </p>
            <span class="style2">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style2">
            <label for="gender">Select Gender (required)<br />
            </label>
            </span>
            <p class="style2">
              <select id="s1" name="gender" class="text">
                <option>-Select-</option>
                <option>Male</option>
                <option>Female</option>
              </select>
            </p>
            <span class="style2">
            <label for="pincode">Enter Pincode (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="pincode" name="pincode" class="text" />
            </p>
            <span class="style2">
            <label for="location">Enter Location (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="loc" name="location" class="text" />
            </p>
            <span class="style2">
            <label for="pic">Select Profile Picture (required)</label>
            </span>
            <strong>
            <label for="pic"></label>
            </strong>
            <label for="pic"><br />
            </label>
            <p>
              <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p>
              <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
          <p>&nbsp;</p>
          <p><a href="SenderLogin.jsp">Back</a></p>
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
            <li><a href="index.html"><span>Home </span></a></li>
            <li><a href="SenderLogin.jsp"><span>Sender</span></a></li>
          <li><a href="ReceiverLogin.jsp">Receiver</a></li>
          <li><a href="SDILogin.jsp"><span>Fog</span></a></li>
          <li><a href="PKGLogin.jsp"><span>KGC</span></a></li>
          <li><a href="CloudLogin.jsp"><span>Cloud Server</span></a></li>
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
