<?php
/**********************************************************************************************
 **  程式功能:	後端首頁
 **  程式名稱:  admin.php
 **  原設計者:  Selina  	                  設立日期:  2017-07-15
 **  備註:
 **  ---------------------------------- 異動記錄明細 ------------------------------------------
 **   異動日期     異動者               異動原因
 **  ----------  ----------  ------------------------------------------------------------------
 **  20170722			Selina			增加產品查詢頁面
 **  20170723			Selina			訂單查詢作
 ***********************************************************************************************/
if (!isset($_SESSION)) {
	session_start();
}
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>後端管理介面-小世界杯子蛋糕</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.js"></script>
<style type="text/css">
div{ 
	width:100%;	
}
</style>
<link href="css/mainpage.css" rel="stylesheet" type="text/css">
<?php 				
	if(!isset($_SESSION["userAccount"])){		 
		header("location:admin/adminlogin_form.php");
	}else if($_SESSION["level"]==0){
		echo $_SESSION["level"];
		header("location:index.php");
	}
?>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
</head>

<body class="body">
	  
<div id="top"> 
	<header id="topHeader"> 
		<a href=""><img class="center-block" alt="miniCake" src="images/headLogo.png" id="toplogo"></a>
	</header>

  <nav id="topnav" class="navbar navbar-default ">
    <div  class="container-fluid">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNav">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
    </div>
    <div id="mainNav" class="collapse navbar-collapse navbar-collapse-center">
      <ul class="nav nav-tabs navbar-center " >
        <li><a href="product/admin/addProduct_form.php">產品上架作業</a></li>
    		<li><a href="product/admin/searProduct_form.php">產品查詢作業</a></li>
        <li><a href="admin/searOrder_form.php">訂單查詢作業</a></li>
      </ul>
    </div>	
  </nav>
</div>
<div id="wrapper" class="container-fluid" align="center">
	<div>  
  	<p align="right">  
			<a href='logout.php'>系統登出</a>	
    </p>
    <p align="right">  
		<a href='index.php' target="new">前台頁面</a>
    </p>
  </div>
  <div>
    歡迎來到後端管理介面!!
    <img src="images/world-01.png">
  </div>
</div>	

<footer id="footer"> 
  <p>&copy; 2017 小世界杯子蛋糕 Corporation. All rights reserved.</p>
</footer>
    

</body>
</html>
