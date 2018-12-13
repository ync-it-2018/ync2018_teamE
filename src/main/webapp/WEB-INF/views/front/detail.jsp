<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Electronic Store a Ecommerce Online Shopping Category Bootstrap Responsive Website Template | Single Page :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="resources/front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/front/css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="resources/front/css/fasthover.css" rel="stylesheet" type="text/css" media="all"/>  <!-- font-awesome icons -->
<link href="resources/front/css/font-awesome.css" rel="stylesheet">
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="resources/front/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="resources/front/js/jquery.min.js"></script> 
<!-- //js -->  
<!-- for bootstrap working -->
<script type="text/javascript" src="resources/front/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
	
	function search() {
		var keyword = $('input[name=keyword]').val();
		location.replace("/search?keyword="+keyword+"&sort=1");
	}
</script>
<!-- //end-smooth-scrolling --> 
</head> 
<body> 
	<!-- header modal -->

	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;</button>
					<h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
							<div class="sap_tabs">	
								<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign in</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign up</span></li>
									</ul>		
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">			
													<input name="Email" placeholder="Email Address" type="text" required="">						
													<input name="Password" placeholder="Password" type="password" required="">										
													<div class="sign-up">
														<input type="submit" value="Sign in"/>
													</div>
												</form>
											</div>
										</div> 
									</div>	 
									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">			
													<input placeholder="Name" name="Name" type="text" required="">
													<input placeholder="Email Address" name="Email" type="email" required="">	
													<input placeholder="Password" name="Password" type="password" required="">	
													<input placeholder="Confirm Password" name="Password" type="password" required="">
													<div class="sign-up">
														<input type="submit" value="Create Account"/>
													</div>
												</form>
											</div>
										</div>
									</div> 			        					            	      
								</div>	
							</div>
							<script src="resources/front/js/easyResponsiveTabs.js" type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function () {
									$('#horizontalTab').easyResponsiveTabs({
										type: 'default', //Types: default, vertical, accordion           
										width: 'auto', //auto or any width like 600px
										fit: true   // 100% fit in a container
									});
								});
							</script>
							<div id="OR" class="hidden-xs">OR</div>
						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<div class="row text-center sign-with">
								<div class="col-md-12">
									<h3 class="other-nw">Sign in with</h3>
								</div>
								<div class="col-md-12">
									<ul class="social">
										<li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
										<li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
										<li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
										<li class="social_behance"><a href="#" class="entypo-behance"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
	<!-- header modal -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_login">
				<a href="#" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
			</div>
			<div class="w3l_logo">
				<h1><a href="/">Electronic Store<span>Your stores. Your place.</span></a></h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box">
				<label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
				<div class="search_form">
					<input type="text" name="keyword" placeholder="Search...">
					<input type="submit" value="Send" onclick="search()">
				</div>
			</div>
			<div class="cart cart box_1"> 
				<form action="#" method="post" class="last"> 
					<input type="hidden" name="cmd" value="_cart" />
					<input type="hidden" name="display" value="1" />
					<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
				</form>   
			</div>  
		</div>
	</div>
	<!-- //header -->
	<!-- navigation -->
	<div class="navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div> 
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li><a href="/" class="act">Home</a></li>
						<!-- Mega Menu -->
					<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=1">Assembly PC</a></li> 
					<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PC<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/standardPC?CATEGORY1_NUM=2&CATEGORY2_NUM=15">Standard PC</a></li>
							<li><a href="/laptopPC?CATEGORY1_NUM=3&CATEGORY2_NUM=18">laptop PC</a></li>     
						</ul>
					</li>
					<li><a href="/event">Event</a></li>
					<li><a href="/service">Service</a></li>
					<li><a href="/team">Team Introduce</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>Single Page</h2>
		</div>
	</div>
	<!-- //banner -->   
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>detail</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 
	 
	<!-- single -->
	<div class="single">
	     <div style="color: #999; font-size: 15px;">
		 ${serverTime.CATEGORY1_NAME} > ${serverTime.CATEGORY2_NAME}
		</div>
		<hr style="border-top: 3px solid black;"> 
		<div class="container">
			 <h3>${serverTime.PRODUCT_NAME}</h3>
			 <h4>${serverTime.CATEGORY3_NAME}</h4>
			 <p> ${serverTime.PRODUCT_TAG}</p>
		</div>
		 <hr style="border-top: 1px solid #999;"> 
		<div class="container">
			<div class="col-md-4 single-left">
		
				<div class="flexslider">
					<!-- <ul class="slides">
						<li>
					 -->
						
							<div class="thumb-image"> <img src="resources/front/images/${serverTime.PRODUCTIMG_M}" data-imagezoom="true" class="img-responsive" alt=""> </div>
						
					<!-- </li>
						<li data-thumb="resources/front/images/b.jpg">
							 <div class="thumb-image"> <img src="resources/front/images/b.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
						</li>
						<li data-thumb="resources/front/images/c.jpg">
						   <div class="thumb-image"> <img src="resources/front/images/c.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
						</li>  
					</ul> -->
				</div>
				<!-- flexslider -->
			<!-- 		<script defer src="resources/front/js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="resources/front/css/flexslider.css" type="text/css" media="screen" />
					<script>
					// Can also be used with $(document).ready()
					$(window).load(function() {
					  $('.flexslider').flexslider({
						animation: "slide",
						controlNav: "thumbnails"
					  });
					});
					</script> -->
				<!-- flexslider -->
				<!-- zooming-effect -->
					<script src="resources/front/js/imagezoom.js"></script>
				<!-- //zooming-effect -->
			</div>
			<div class="col-md-8 single-right">
			   
				<!-- <div class="rating1">
					<span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked>
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					</span>
				</div> -->
				<div class="description">
					<h5><i>Description</i></h5>
					<p>${serverTime.PRODUCT_CONTENT}</p>
				</div>
				<!-- <div class="color-quality">
					<div class="color-quality-left">
						<h5>Color : </h5>
						<ul>
							<li><a href="#"><span></span></a></li>
							<li><a href="#" class="brown"><span></span></a></li>
							<li><a href="#" class="purple"><span></span></a></li>
							<li><a href="#" class="gray"><span></span></a></li>
						</ul>
					</div>
					<div class="color-quality-right">
						<h5>Quality :</h5>
						 <div class="quantity"> 
							<div class="quantity-select">                           
								<div class="entry value-minus1">&nbsp;</div>
								<div class="entry value1"><span>1</span></div>
								<div class="entry value-plus1 active">&nbsp;</div>
							</div>
						</div>
						quantity
								<script>
								$('.value-plus1').on('click', function(){
									var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
									divUpd.text(newVal);
								});

								$('.value-minus1').on('click', function(){
									var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
									if(newVal>=1) divUpd.text(newVal);
								});
								</script>
							quantity

					</div>
					<div class="clearfix"> </div>
				</div> -->
				<!-- <div class="occasional">
					<h5>RAM :</h5>
					<div class="colr ert">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>3 GB</label>
						</div>
					</div>
					<div class="colr">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>2 GB</label>
						</div>
					</div>
					<div class="colr">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>1 GB</label>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div> -->
				<div class="simpleCart_shelfItem">
					<p><span>$460</span> <i class="item_price">${serverTime.PRODUCT_PRICE}</i></p>
					<form action="#" method="post">
						<input type="hidden" name="cmd" value="_cart">
						<input type="hidden" name="add" value="1"> 
						<input type="hidden" name="w3ls_item" value="Smart Phone"> 
						<input type="hidden" name="amount" value="450.00">   
						<button type="submit" class="w3ls-cart">Add to cart</button>
					</form>
				</div> 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div> 
	<div class="additional_info">
		<div class="container">
			<div class="sap_tabs">	
				<div id="horizontalTab1" style="display: block; width: 100%; margin: 0px;">
					<ul>
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Product Information</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Reviews</span></li>
					</ul>		
					<div class="tab-1 resp-tab-content additional_info_grid" aria-labelledby="tab_item-0">
						<img src="resources/front/images/${serverTime.PRODUCTIMG_L}" data-imagezoom="true" class="img-responsive" alt="">						
					</div>	

					<div class="tab-2 resp-tab-content additional_info_grid" aria-labelledby="tab_item-1">
						<h4>Reviews</h4>
						<c:forEach items="${serverTime1}" var="serverTime1">	
						<div class="additional_info_sub_grids">
							<div class="col-xs-2 additional_info_sub_grid_left">
								<img src="resources/front/images/${serverTime1.REVIEWIMG_PATH}" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-10 additional_info_sub_grid_right">
								<div class="additional_info_sub_grid_rightl">
									<H2>${serverTime1.REVIEW_TITLE}</H2>
									<h5>${serverTime1.REVIEW_DATE}</h5>
									<p>${serverTime1.REVIEW_CONTENTS}</p>
									<p><strong>작성자 : ${serverTime1.USER_ID}</strong></p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
						</c:forEach>
						<!-- <div class="additional_info_sub_grids">
							<div class="col-xs-2 additional_info_sub_grid_left">
								<img src="resources/front/images/t2.png" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-10 additional_info_sub_grid_right">
								<div class="additional_info_sub_grid_rightl">
									<a href="/single">Michael</a>
									<h5>Oct 04, 2016.</h5>
									<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
										velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
										quo voluptas nulla pariatur.</p>
								</div>
								<div class="additional_info_sub_grid_rightr">
									<div class="rating">
										<div class="rating-left">
											<img src="resources/front/images/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="resources/front/images/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="resources/front/images/star.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="resources/front/images/star.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="resources/front/images/star.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div> -->
						<div class="review_grids">
							<h5>Add A Review</h5>
							<form action="/detail" method="post">
								<input type="text" name="Title" value="Title" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
								<input type="text" name="Telephone" value="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone';}" required="">
								<textarea name="Review" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Contents';}" required="">Contents</textarea>
								<input type="submit" value="Submit" >
							</form>
						</div>
					</div> 			        					            	      
				</div>	
			</div>
			<script src="resources/front/js/easyResponsiveTabs.js" type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function () {
					$('#horizontalTab1').easyResponsiveTabs({
						type: 'default', //Types: default, vertical, accordion           
						width: 'auto', //auto or any width like 600px
						fit: true   // 100% fit in a container
					});
				});
			</script>
		</div>
	</div>
	
	
	<!-- //single -->
	<%@include file="front_include/footer.jsp" %>
</body>
</html>