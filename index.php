<?php 
/**********************************************************************************************
 **  程式功能:	前端首頁
 **  程式名稱:  index.php
 **  原設計者:  Selina  	                  設立日期:  2017-07-15
 **  備註:
 **  ---------------------------------- 異動記錄明細 ------------------------------------------
 **   異動日期     異動者               異動原因
 **  ----------  ----------  ------------------------------------------------------------------
 **  20170719		Selina		v20170719001 增加會員管控
 ***********************************************************************************************/
	//session_start();
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mini world cupcake</title>
  <?php 				//v20170719001
	if (!isset($_SESSION)) {
		session_start();
	}
	if(!isset($_SESSION["userAccount"])){
		 
		//header("location:login_form.php");
	}
  ?>
<!-- <link href="css/bootstrap.css" rel="stylesheet" type="text/css"> -->
<link href="css/bootstrap-3.3.7.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.11.3.min.js"></script>
<!-- <script src="js/bootstrap.js"></script> -->
<script src="js/bootstrap-3.3.7.js"></script>
<style type="text/css">
	.topCarousel{
		width:960px;
		height:600px; 
	}

</style>
<link href="css/mainpage.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="images/siteIcon.png"/>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="body">
	  
<div id="top"> 
	<header id="topHeader"> 
			<a href="index.php"><img  class="center-block" alt="miniCake" src="images/headLogo.png" id="toplogo"></a>
		</header>

	   <nav  id="topnav" class="navbar navbar-default ">
			
		<div  class="container-fluid">
		 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNav">
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span> 
         </button>
        </div>
      <!--  <nav id="mainNav" class="navbar navbar-collapse navbar-collapse-center" > -->
      	    <div id="mainNav" class="collapse navbar-collapse navbar-collapse-center">
				<ul class="nav nav-tabs navbar-center " >
					
					<li class="dropdown" ><a class="dropdown-toggle" data-toggle="dropdown" href="#" >關於我們<span class="caret"></span></a>
					<ul class="dropdown-menu">
							<li><a href="aboutUs.html">品牌介紹</a></li>
							<li><a href="doll.html">公仔介紹</a></li>
					</ul>
					</li>
					<li><a href="news.html">最新消息</a></li>
					<!--<li class="navbar-header">
					<img alt="miniCake" src="images/minilogo.png" id="toplogo">
					</li> -->
							
				  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">產品介紹<span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="html/product-p1.html">經典系列</a></li>
											<li><a href="html/product-p3.html">可愛少女系</a></li>
											<li><a href="html/product-p4.html">戀人專屬</a></li>
											<li><a href="html/product-p2.html">濃情巧克力</a></li>
											<li><a href="html/product-p5.html">特色主題</a></li>
										</ul>
				  </li>		 	
				  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">購物專區<span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="Process.html">購物說明</a></li>
											<li><a href="shopcart/cartindex.php">購物車</a></li>
										</ul>
				  </li>
				  <li><a href="Contact.html">聯絡我們</a></li>
			</ul>
			</div>	
		</nav>
</div>
	<div id="wrapper" class="container-fluid">		
		<?php 
		if (isset($_SESSION["userAccount"])) {
			if($_SESSION["level"]>0){ ?>
			<a href='admin.php' target="new">
			<button>後端管理頁面</button>
			</a>	
			<?php } ?>
			<a href='logout.php'><h4 align="right">系統登出</h3></a>
		<?php 			
		   }
		?>
		<div id="topCarousel" class="carousel slide" data-ride="carousel">						
	<!-- （Carousel）<pre >next -->
			<ol class="carousel-indicators">
				<li data-target="#topCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#topCarousel" data-slide-to="1"></li>
				<li data-target="#topCarousel" data-slide-to="2"></li>				
			</ol>   
			<!-- （Carousel）item -->
			<div class="carousel-inner">
				<div class="item active">
				  <img src="images/banner01.png" alt="First slide">
					<div class="carousel-caption">棒球主題限定</div>
				</div>
				<div class="item">
				  <img src="images/banner02.png" alt="Second slide">
					<div class="carousel-caption">美味的杯子蛋糕</div>
				</div>
				<div class="item">
				  <img src="images/banner03.png" alt="Third slide">
					<div class="carousel-caption">季節主題</div>
				</div>				
				
			</div>
			<a class="carousel-control left" href="#topCarousel" 
				data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control right" href="#topCarousel" 
				data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    			<span class="sr-only">Next</span>
			</a>
		</div>
						
	<main id="mainContent"> 
	<section class="row">
		<div id="recoGood" class="col-sm-6 col-md-7">
			<h3 class="newsh3">推薦商品</h3>
			<div id="recomCarousel" class="carousel slide"  data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#recomCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#recomCarousel" data-slide-to="1"></li>
					<li data-target="#recomCarousel" data-slide-to="2"></li>
				</ol>   
				<!-- （Carousel）item -->
				<div class="carousel-inner">
					<div class="item active">
					  <img src="images/part-1.jpg" alt="First slide">
						<div class="carousel-caption">夏日檸檬組合</div>
					</div>
					<div class="item">
					  <img src="images/part-2.jpg" alt="Second slide">
						<div class="carousel-caption">婚禮組合</div>
					</div>
					<div class="item">
					  <img src="images/part-3.jpg" alt="Third slide">
						<div class="carousel-caption">野餐外帶組合</div>
					</div>
				</div>
				<a class="carousel-control left" href="#recomCarousel" 
					data-slide="prev">&lsaquo;
				</a>
				<a class="carousel-control right" href="#recomCarousel" 
					data-slide="next">&rsaquo;
				</a>
			</div>
				  <div id="news">
		  <h3 class="newsh3" align="center" >最新消息</h3>
		  <article id="n1" class=""> 
			  <a href="html/news1.html"><h4>News-1: 7月28日開幕茶會</h4></a>		  
			  <a href="html/news2.html"><h4>News-2: 烘培教室即將開課</h4></a>			 
			  <a href="html/news3.html"><h4>News-3: 限定新口味咖啡豆杯子蛋糕</h4></a>			
			  <a href="html/news4.html"><h4>News-4: 歡慶旗艦店開幕</h4></a>
			  <a href="html/news5.html"><h4>News-5: 父親節歡慶優惠</h4></a>
		  </article>
		  		
		</div>	
			
		</div>
		<div id="goodIcon" class=" center-block col-sm-6 col-md-5">
		  <ul>
				<li><a href="#"><img src="images/b-1.png" alt="購物系統"></a></li>
				<li><a href="#"><img src="images/b-2.png" alt="常見Q&A"></a></li>
				<li><a href="#"><img src="images/b-3.png" alt="產品目錄"></a></li>
				
			</ul>
		</div>
		
	</section>		
	<section id="prodAnews" class="row"> 
	
	  <div id="socialMedia" class="col-sm-7 col-md-6"> 

  	 	<div id="fbIf"> 
  	 	<iframe  src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Flwcupcake%2F&tabs=timeline&width=400&height=70&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="450" height="100" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
  	 	</div>
  	 	<p></p><br>
  	 	
  	 	<div id="IG"><a href="https://www.instagram.com/lwcupcake/" target="_blank"><img src="images/IG.png" title="官方IG" alt="官方IG"></a></div>
      </div>
  	 
 	  <div id="sec1" class=" col-sm-3 col-md-6">
			<div class="prod" id="prod1"><a href="html/product-p1.html"><img class="img-responsive" src="images/P1.png" alt="經典系列"></a></div>
		  	<div class="prod" id="prod2"><a href="html/product-p2.html"><img class="img-responsive" src="images/P2.png" alt=" 濃情巧克力"></a></div>
		  	<div class="prod" id="prod3"><a href="html/product-p3.html"><img class="img-responsive" src="images/P3.png" alt="可愛少女系"></a></div>
		  	<div class="prod" id="prod4"><a href="html/product-p4.html"><img class="img-responsive" src="images/P4.png" alt="戀人專屬"></a></div>
		  	<div class="prod" id="prod5"><a href="html/product-p5.html"><img class="img-responsive" src="images/P5.png" alt="主題特色"></a></div>
		</div>
  	 
    </section>	
	</main>
</div>
<div class="container-fluid" id="footer"> 
	<footer class="nav navbar-default noC">
	  <ul id="footerTb" class="nav nav-tabs navbar-center noC"> 
			<li><a href="sitemap.html">網站地圖</a></li>
			<li><a href="https://www.facebook.com/lwcupcake/">官方粉絲團</a></li>
	  		<li><a href="traffic.html">交通資訊</a></li>
	  		<li><a href="Contact.html">聯絡我們</a></li>
	</ul>
	  <p class="noC">&copy; 2017 小世界杯子蛋糕 Corporation. All rights reserved.</p>  
	</footer>
</div>
</body>
</html>
