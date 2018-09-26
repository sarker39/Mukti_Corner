<?php 
	$var = mysqli_connect('localhost','root','','mukticorner_v2');

	mysqli_set_charset($var, 'utf8');

	$sql = "SELECT * FROM news_table";

	

	$records = mysqli_query($var,$sql);


 ?>


<!DOCTYPE html>
<html>
<head>
	<title>Mukti Corner</title>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Custom Theme files -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Express News Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- web-fonts -->
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/slide.css">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <meta charset="utf-8">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider").responsiveSlides({
				auto: true,
				nav: true,
				speed: 500,
				namespace: "callbacks",
				pager: true,
			});
		});
	</script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!--/script-->
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
			});
		});
	</script>
</head>
<body style="padding: 0px;">
	<!-- image starts -->
	
		<div id="myCarousel" class="carousel slide" data-ride="carousel" >
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" >
				<div class="item active">
					<img src="img/ff1.jpg" alt="Los Angeles" style="width:100%; height: 500px; padding: 0px;">
				</div>

				<div class="item">
					<img src="img/ff2.jpg" alt="Chicago" style="width:100%;height: 500px; padding: 0px;">
				</div>

				<div class="item">
					<img src="img/ff3.jpg" alt="New york" style="width:100%;height: 500px; padding: 0px;">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	
		<!-- image ends-->
	<div class="container-fluid">
		<!-- navigation starts -->
		<div class="row">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- <div class="navbar-header">
						<a class="navbar-brand" href="#">WebSiteName</a>
					</div> -->
					<ul class="nav navbar-nav" >
						<li><a href="index.php" style="padding-left: 50px; padding-right: 50px;">Home</a></li>
						<li><a href="ekpata.php" style="padding-left: 50px; padding-right: 50px;">Ek patay Muktijuddho</a></li>
						<li><a href="archive.php" style="padding-left: 50px; padding-right: 50px;">Archive</a></li>
						<li><a href="gallery.php" style="padding-left: 50px; padding-right: 50px;">Gallery</a></li>
						<li><a href="blog.php" style="padding-left: 50px; padding-right: 50px;">Blog</a></li>
						<li><a href="participate.php" style="padding-left: 50px; padding-right: 50px;">Participate</a></li>

					</ul>
				</div>
			</nav>
		</div>
		<!-- navigation ends -->

		<div class="container">
		<div class="row">
			<!-- main news section starts -->
			<div class="col-md-8">
				<div class="articles">
					<header>
						<h3 class="title-head" style="text-align:center;">এবং প্রতিদিন</h3>
					</header>
					<?php 
						while($news = mysqli_fetch_assoc($records)){
							echo "<div class='article'>
								<div class='article-left'>
									<a href='".$news['news_link']."'><img src='".$news['news_img']."'></a>
								</div>
								<div class='article-right'>
									<div class='article-title'>
										<p> On  ". $news['news_date']."<a class='span_link' href='#'><span class='glyphicon glyphicon-eye-open'></span>".$news['news_view']."</a><a class='span_link' href='#'><span class='glyphicon glyphicon-thumbs-up'></span>".$news['news_hit']."</a>
										</p>
										<a class='title' href='".$news['news_link']."'> ".$news['news_title']."
										</a>
									</div>
									<div class='article-text'>
										<p>".$news['news_text']."
										</p>
										<a href='single.html'><img src='images/more.png' alt='' /></a>
									<div class='clearfix'>
								</div>
							</div>
							</div>
							<div class='clearfix'></div>
							</div>";

						}

					 ?>
				</div>
			</div>
			<!-- main news section ends  -->
			<!-- side section starts -->
			<div class="col-md-4" style="padding-top: 60px">
				<div class="popular-post-grids">
					<div class="popular-post-grid">
						<div class="post-img">
							<a href="single.html"><img src="images/bus2.jpg" alt="" /></a>
						</div>
						<div class="post-text">
							<a class="pp-title" href="single.html"> The section of the mass media industry</a>
							<p>On Feb 25 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>3 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a></p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="popular-post-grid">
						<div class="post-img">
							<a href="single.html"><img src="images/bus1.jpg" alt="" /></a>
						</div>
						<div class="post-text">
							<a class="pp-title" href="single.html"> Lorem Ipsum is simply dummy text printing</a>
							<p>On Apr 14 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>2 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a></p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="popular-post-grid">
						<div class="post-img">
							<a href="single.html"><img src="images/bus3.jpg" alt="" /></a>
						</div>
						<div class="post-text">
							<a class="pp-title" href="single.html">There are many variations of Lorem</a>
							<p>On Jun 25 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a></p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="popular-post-grid">
						<div class="post-img">
							<a href="single.html"><img src="images/bus4.jpg" alt="" /></a>
						</div>
						<div class="post-text">
							<a class="pp-title" href="single.html">Sed ut perspiciatis unde omnis iste natus</a>
							<p>On Jan 25 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>1 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a></p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!-- side section ends -->
		</div>	
	</div>
</div>
	
<!-- footer starts from here -->
<div class="footer-bottom">
	<div class="wrap">
		<div class="copyrights col-md-6">
			<p> © 2018 All Rights Reserved | Developed by  <a href="http://www.sust.edu/d/cse/"> CSE SUST</a></p>
		</div>
		<div class="footer-social-icons col-md-6">
			<ul>
				<li><a class="facebook" href="#"></a></li>
				<li><a class="twitter" href="#"></a></li>
				<li><a class="flickr" href="#"></a></li>
				<li><a class="googleplus" href="#"></a></li>
				<li><a class="dribbble" href="#"></a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- footer ends -->
<script type="text/javascript">
	$(document).ready(function() {
				/*
				var defaults = {
				wrapID: 'toTop', // fading element id
				wrapHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

	</body>
	</html>