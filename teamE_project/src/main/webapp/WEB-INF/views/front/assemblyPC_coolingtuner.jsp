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
<title>Electronic Store a Ecommerce Online Shopping Category Bootstrap Responsive Website Template | Products :: w3layouts</title>
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
<!-- <link href="resources/front/css/style2.css" rel="stylesheet" type="text/css" media="all" />  -->

<link href="resources/front/css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
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
<style>

	
	.border {
		margin: 2px 0;
		padding: 1px 5px;
		border:solid;
		border-width: 2px;
		border-color: #CBC4C4;
	}
	
    
   .category_list {
    position: relative;
    height: 40px;
    border-bottom: 1px solid #8f8f8f;
	}

	.text_img_view li {
	    list-style-type: none;
	}
	.category_list li {
	    float: left;
	    width: 126.5px;
	    height: 28px;
	    border: 1px solid #e2e2e2;
	    border-bottom-color: #b1b4bd;
	    margin-left: -1px;
	}
	
	.hs-wrapper2 {
    width: 150px !important;
    height: 150px !important;
}
	.select {
    font-size: 14px;
    color: #212121;
    width: 265px;
    margin: 7px;
    height: 40px;
    margin-left: 15px;
}

.col-md-1 {
    width: 13%;
}

.col-md-9 {
    width: 78%;
}

.simpleCart_shelfItem button.w3ls-cart {
	padding-left: 5px; 
	padding-right: 5px;
}

.myButton {
	-moz-box-shadow: 0px 10px 14px -7px #276873;
	-webkit-box-shadow: 0px 10px 14px -7px #276873;
	box-shadow: 0px 10px 14px -7px #276873;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #599bb3), color-stop(1, #408c99));
	background:-moz-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-webkit-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-o-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-ms-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#599bb3', endColorstr='#408c99',GradientType=0);
	background-color:#599bb3;
	-moz-border-radius:8px;
	-webkit-border-radius:8px;
	border-radius:8px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:10px;
	font-weight:bold;
	padding:5px 5px;
	text-decoration:none;
	text-shadow:0px 1px 0px #3d768a;
}

</style>
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
	<div class="banner banner1">
		<div class="container">
			<h2>Great Offers on <span>Mobiles</span> Flat <i>35% Discount</i></h2> 
		</div>
	</div> 
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>AssemblyPC</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 
	<!-- mobiles -->             
		<!-- //breadcrumbs --> 
	<!-- mobiles -->
	<div class="mobiles">
		<div class="container" style="padding-left: 0px;">
			<div class="w3ls_mobiles_grids">
				<div class="col-md-3 w3ls_mobiles_grid_left" style="margin-right: 20px">
					<div class="w3ls_mobiles_grid_left_grid">
						<h3>Categories</h3>
						<div class="w3ls_mobiles_grid_left_grid_sub" style="width:100%">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
								  <h4 class="panel-title asd">
									<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>PC 주요부품
									</a>
								  </h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								  <div class="panel-body panel_text">
									<ul>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=1"> CPU</a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=2"> 메인보드</a></li> 
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=3"> 메모리 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=4"> 그래픽 </a></li> 
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=5"> SSD </a></li> 
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=6"> 하드디스크 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=7"> ODD </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=8"> 파워 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=9"> 케이스 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=10"> 키보드 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=11"> 마우스 </a></li>
									    <li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=12"> 모니터 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=13"> <strong>쿨링/튜너</strong> </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=14"> S/W</a></li>
									  </ul>
								  </div>
								</div>
							  </div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-9 w3ls_mobiles_grid_right">
				
					<div id="selectSearchArea" class="border">
					<H1 style="margin: 10px;"> 쿨링/튜너 </H1>
						<div class="select_list">
							<ul>
								<select class="select" name="CATEGORY3_NUM" id="CATEGORY3_NUM" title="제조사" style="width:89%;">
									<option value='' selected> -- 제조사 -- </option>
									<option value='쿨러마스터 ' >  쿨러마스터   </option>
									<option value='DEEPCOOL' >  DEEPCOOL  </option>
									<option value='Antec' >  Antec   </option>
									<option value='잘만' >  잘만  </option>
									<option value='JONSBO ' >  JONSBO   </option>
									<option value='써모랩' >  써모랩  </option>
									<option value='CORSAIR' >  CORSAIR   </option>
									<option value='NZXT' >  NZXT  </option>
									<option value='BYKSKI' >  BYKSKI  </option>
									<option value='NOCTUA' >  NOCTUA  </option>
									<option value='EVGA' >  'EVGA'  </option>
								</select>
								<input type="button" value="검색" onClick="Product_Search()">
							</ul>
							<ul>
								<select class="select" name="TAG_1" id="TAG_1" title="제품 종류">
									<option value='' selected> -- 제품 종류 -- </option>
									<option value='CPU쿨러' >  CPU 쿨러   </option>
									<option value='시스템쿨러' >  시스템 쿨러  </option>
									<option value='써멀컴파운드' >  써멀 컴파운드  </option>
								</select>
								<select class="select" name="TAG_2" id="TAG_2" title="냉각 방식">
									<option value='' selected> -- 냉각 방식 -- </option>
									<option value='공랭' >  공랭    </option>
									<option value='수랭' >  수랭  </option>
								</select>
								<select class="select" name="TAG_3" id="TAG_3" title="쿨링팬 크기">
									<option value='' selected> -- 쿨링팬 크기 -- </option>
									<option value='120mm' >  120mm  </option>
									<option value='92mm' >  92mm  </option>
									<option value='80mm' >  80mm  </option>
								</select>
							</ul>
							<ul>
								<select class="select" name="TAG_4" id="TAG_4" title="인텔 소켓">
									<option value='' selected> -- 인텔 소켓 -- </option>
									<option value='LGA115x' >  LGA115x </option>
									<option value='LGA2011-V3' >  LGA2011-V3 </option>
									<option value='LGA2011' >  LGA2011 </option>
									<option value='LGA775' >  LGA775 </option>
								</select>
							
								<select class="select" name="TAG_5" id="TAG_5" title="AMD 소켓">
									<option value='' selected> -- AMD 소켓 -- </option>
									<option value='AM4' > AM4  </option>
									<option value='FMx/AMx(AM1/4별도)' > FMx/AMx (AM1/4별도) </option>
									<option value='AM1' > AM1  </option>
									<option value='소켓939' > 소켓939  </option>
									<option value='소켓754' > 소켓754  </option>
								</select>
								
							</ul>
						</div>
					</div>
					<!--상품정렬 -->
					<div class="w3ls_mobiles_grid_right_grid2_right">
							<select name="select_item" class="select_item" style="margin-right:0em; margin-top: 10px;">
								<option selected="selected">Default sorting</option>
								<option>Sort by popularity</option>
								<option>Sort by average rating</option>
								<option>Sort by newness</option>
								<option>Sort by price: low to high</option>
								<option>Sort by price: high to low</option>
							</select>
						</div>
					<div class="clearfix"> </div>
					<!--/상품정렬 -->
					
						<!--상품출력 -->
					<c:forEach items="${serverTime}" var="serverTime">	
					<div class="w3ls_mobiles_grid_right_grid2" style="width:100%; height: 200px; margin-top: 50px;">
						<div class="col-md-3 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<img src="resources/front/images/${serverTime.PRODUCTIMG_S}" alt=" " class="img-responsive"/>
				                    
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
							 </div>
						</div>
						<div class="col-md-7 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
								<div><a href="/detail?PRODUCT_NUM=${serverTime.PRODUCT_NUM}" style="color: black ">${serverTime.PRODUCT_NAME}</a></div>
								<div style="color: #999; font-size: 15px;">${serverTime.CATEGORY1_NAME} > ${serverTime.CATEGORY2_NAME} </div>
								<div>${serverTime.CATEGORY3_NAME}</div>
								<div class="simpleCart_shelfItem">
									<p style="font-size: 10px;">${serverTime.PRODUCT_TAG}</span>
							    </div> 
						</div>
						<div class="col-md-2 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
						<div class="simpleCart_shelfItem">
									<p>$ <i class="item_price">${serverTime.PRODUCT_PRICE} </i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="${serverTime.PRODUCT_NAME}"/> 
										<input type="hidden" name="amount" value="${serverTime.PRODUCT_PRICE}"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
						     </div> 
				     	  </div>
					    </div>
					   <hr style="border-top: 1px solid #999;"> 
					</c:forEach>
					</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>  
	<div class="modal video-modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModal9">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/27.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Latest Smart Phone </h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$250</span> <i class="item_price">$245</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Smart Phone" /> 
									<input type="hidden" name="amount" value="245.00"/>   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div> 	
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/34.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Musical Kids Toy</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$150</span> <i class="item_price">$100</i></p> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Kids Toy"> 
									<input type="hidden" name="amount" value="100.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Ã</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/36.jpg" alt=" " class="img-responsive">
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Dry Vacuum Cleaner</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive">
								</div>
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
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$960</span> <i class="item_price">$920</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Vacuum Cleaner"> 
									<input type="hidden" name="amount" value="920.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/p3.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Music MP3 Player </h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$60</span> <i class="item_price">$58</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="MP3 Player" /> 
									<input type="hidden" name="amount" value="58.00"/>   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Ã</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/38.jpg" alt=" " class="img-responsive">
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Kitchen &amp; Dining Accessories</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star.png" alt=" " class="img-responsive">
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$650</span> <i class="item_price">$645</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Microwave Oven"> 
									<input type="hidden" name="amount" value="645.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div> 
	<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/p6.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Latest Asus ZenPad Tablet</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/front/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>  
							<div class="modal_body_right_cart  simpleCart_shelfItem">
								<p><span>$45</span> <i class="item_price">$425</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Latest Tablet" /> 
									<input type="hidden" name="amount" value="425.00" />   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>  
	<!-- Related Products -->
	<div class="w3l_related_products">
		<div class="container">
			<h3>Related Products</h3>
			<ul id="flexiselDemo2">			
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left mobiles_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="resources/front/images/34.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/35.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/27.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/28.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/37.jpg" alt=" " class="img-responsive" /> 
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="/single">Kid's Toy</a></h5>
							<div class="simpleCart_shelfItem"> 
								<p class="flexisel_ecommerce_cart"><span>$150</span> <i class="item_price">$100</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Kid's Toy"> 
									<input type="hidden" name="amount" value="100.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form> 
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left mobiles_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="resources/front/images/36.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/32.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/33.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/32.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/36.jpg" alt=" " class="img-responsive" /> 
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="/single">Vacuum Cleaner</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$960</span> <i class="item_price">$920</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Vacuum Cleaner" /> 
									<input type="hidden" name="amount" value="920.00"/>   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left mobiles_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="resources/front/images/38.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/37.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/27.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/28.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/37.jpg" alt=" " class="img-responsive" /> 
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="/single">Microwave Oven</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$650</span> <i class="item_price">$645</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Microwave Oven" /> 
									<input type="hidden" name="amount" value="645.00"/>   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left mobiles_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="resources/front/images/p3.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/p5.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/p4.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/p2.jpg" alt=" " class="img-responsive" />
								<img src="resources/front/images/p1.jpg" alt=" " class="img-responsive" /> 
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="/single">Music MP3 Player</a></h5>
							<div class="simpleCart_shelfItem">
								<p><span>$60</span> <i class="item_price">$58</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Ultra MP3 Player" /> 
									<input type="hidden" name="amount" value="58.00"/>   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div> 
							<div class="mobiles_grid_pos">
								<h6>New</h6>
							</div>
						</div> 
					</div>
				</li>
			</ul>
			
				
		</div>
	</div>
	<!-- //Related Products -->
	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="submit" value="" />
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<h3>Contact</h3>
					<p>Duis aute irure dolor in reprehenderit in voluptate velit esse.</p>
					<ul class="address">
						<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Information</h3>
					<ul class="info"> 
						<li><a href="/about">About Us</a></li>
						<li><a href="/mail">Contact Us</a></li>
						<li><a href="/codes">Short Codes</a></li>
						<li><a href="/faq">FAQ's</a></li>
						<li><a href="/products">Special Products</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Category</h3>
					<ul class="info"> 
						<li><a href="/products">Mobiles</a></li>
						<li><a href="/products1">Laptops</a></li>
						<li><a href="/products">Purifiers</a></li>
						<li><a href="/products1">Wearables</a></li>
						<li><a href="/products2">Kitchen</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Profile</h3>
					<ul class="info"> 
						<li><a href="/">Home</a></li>
						<li><a href="/products">Today's Deals</a></li>
					</ul>
					<h4>Follow Us</h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="footer-copy">
			<div class="footer-copy1">
				<div class="footer-copy-pos">
					<a href="#home1" class="scroll"><img src="resources/front/images/arrow.png" alt=" " class="img-responsive" /></a>
				</div>
			</div>
			<div class="container">
				<p>&copy; 2017 Electronic Store. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
		</div>
	</div>
	<!-- //footer -->  
	<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems:4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:568,
						visibleItems: 1
					}, 
					landscape: { 
						changePoint:667,
						visibleItems:2
					},
					tablet: { 
						changePoint:768,
						visibleItems: 3
					}
				}
			});
			
		});
	</script>
	<script type="text/javascript" src="resources/front/js/jquery.flexisel.js"></script>
	<!-- cart-js -->
	<script src="resources/front/js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) { 
        		}
        	}
        });
    </script>  
    <script>
    function Product_Search() {
    var CATEGORY3_NUM =  $("#CATEGORY3_NUM option:selected").val();
    var TAG_1 =  $("#TAG_1 option:selected").val();
    var TAG_2 =  $("#TAG_2 option:selected").val();
    var TAG_3 =  $("#TAG_3 option:selected").val();
    var TAG_4 =  $("#TAG_4 option:selected").val();
    var TAG_5 =  $("#TAG_5 option:selected").val();
  
    
    location.replace("/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=13&CATEGORY3_NUM="+CATEGORY3_NUM+"&TAG_1="+TAG_1+"&TAG_2="+TAG_2+"&TAG_3="+TAG_3+"&TAG_4="+TAG_4+"&TAG_5="+TAG_5);
	   
    }
    </script>
	<!-- //cart-js --> 
</body>
</html>