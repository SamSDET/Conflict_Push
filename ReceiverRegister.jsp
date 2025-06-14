<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Receiver</title>
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
.style12 {color: #FF0000}
.style13 {color: #FF0000; font-weight: bold; }
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
          <h2 class="style13">Receiver Register :  </h2>
          <form action="RRegister.jsp" method="post" id="" enctype="multipart/form-data">
            <span class="style13">
            <label for="name"><br />
            Receiver  Name (required)<br />
            </label>
            </span>
            <p class="style13">
              
              <span class="article">
              <input id="name" name="userid" placeholder="name" class="text" />
              </span></p>
            <p class="style12 article"><strong>
              
              <label for="password">Password (required)<br />
              </label>
              <input type="password" id="password" name="pass" placeholder="password"class="text" />
            </strong></p>
           
            <p class="style12 article"><strong><span class="article"><label for="email">Email Address (required)<br />
              </label>
              <input id="email" name="email" placeholder="test@gmail.com"class="text" />
              </span></strong></p>
            <p class="style12 article"><strong>
              
              <span class="article">
              <label for="mobile">Mobile Number (required)<br />
              </label>
              <input id="mobile" name="mobile" placeholder="mobile number"class="text" />
              </span></strong></p>
            <p class="style12 article"><strong>
              
              <span class="article">
              <label for="address">Your Address<br />
              </label>
              <textarea name="address" cols="50" placeholder="address"id="address"></textarea>
              </span></strong></p>
            <p class="style12 article"><strong>
              
              <span class="article">
              <label for="dob">Date of Birth (required)<br />
              </label>
              <input id="dob" name="dob" placeholder="dob"class="text" />
              </span></strong></p>
            <p class="style12 article"><strong>
              
              <span class="article">
              <label for="gender">Select Gender (required)<br />
              </label>
              <select id="s1" name="gender" class="text">
                <option>-Select-</option>
                <option>Male</option>
                <option>Female</option>
              </select>
              </span></strong></p>
            <p class="style12 article"><strong>
              
              <span class="article">
              <label for="pincode">Enter Pincode (required)<br />
              </label>
              <input id="pincode" name="pincode"placeholder="pin code" class="text" />
              </span></strong></p>
            <p class="style12 article"><strong>
              
              <span class="article">
              <label for="location">Enter Location (required)<br />
              </label>
              <input id="loc" name="location" placeholder="location" class="text" />
              </span></strong></p>
            <p class="article"> 
              
              <span class="style12 article"><strong>
              <label for="pic">Select Profile Picture (required)</label>
              </strong></span><span class="article style12">              </span></p>
            <p class="article"><span class="article">              
              <input type="file" id="pic" name="pic" class="text" />
            </span></p>
            <p> 
              
              <span class="article">
              <input name="submit" type="submit" value="REGISTER" />
              </span></p>
          </form>
          <div class="pages">
            <p align="justify">&nbsp;</p>
            <p align="justify" class="article"><span class="article"><a href="EditorLogin.jsp"></a></span><a href="ReceiverLogin.jsp">Back</a></p>
          </div>
          <div class="clr"></div>
          <div class="img"></div>
        </div>
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
