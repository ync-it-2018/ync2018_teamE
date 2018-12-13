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
<title>Electronic Store a Ecommerce Online Shopping Category Bootstrap Responsive Website Template | Mail Us :: w3layouts</title>
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
	
	$(function () {	
		tab('#tab',0);	
	});
	

	function search() {
		var keyword = $('input[name=keyword]').val();
		location.replace("/search?keyword="+keyword+"&sort=1");
	}

	function tab(e, num){
	    var num = num || 0;
	    var menu = $(e).children();
	    var con = $(e+'_con').children();
	    var select = $(menu).eq(num);
	    var i = num;

	    select.addClass('on');
	    con.eq(num).show();

	    menu.click(function(){
	        if(select!==null){
	            select.removeClass("on");
	            con.eq(i).hide();
	        }

	        select = $(this);	
	        i = $(this).index();

	        select.addClass('on');
	        con.eq(i).show();
	    });
	}
</script>
<style>
.input_cs {border:solid; width:150px; height:40px; padding-left:5px; padding-top:5px; padding-right:5px;display:inline-block;}
.btn_black_basic {
    background: #000;
    color: #fff;
    display: inline-block;
    text-align: center;
    font-weight: bold;
    line-height: 30px;
    width: 100px;
}
.title-page {
    font-size: 24px;
    height: 17px;
    line-height: 17px;
    font-weight: normal;
    display: inline-block;
    *display: inline;
    *zoom: 1;
    margin-bottom:20px;
}
.right_contents_pd10 {
    padding: 5px 5px 5px 5px;
    clear: both;
    border-bottom: 1px solid #ddd;
}
.cs_center {
    display: inline-block;
  
   
   
}
.cs_number {
    font-size: 30px;
}
.cs_menu {
    display: inline-block;
    margin-left: 30px;
    font-family: "gulim","굴림",Arial, sans-serif;
    width: 450px;
    
    
}
.cs_menu ul li {
    color: #999;
    margin-right: 20px;
    border-bottom: 1px solid #ddd;
    line-height: 30px;
    width: 166px;
    float: left;
    
}
.mypage_type {
    width: 70%; 
    min-width: 500px;
    height: 32px;
    margin-top: 20px;
    *zoom: 1;
    border: 1px solid #ddd;
    border-left: none;
    box-sizing: border-box;
}

.mypage_type li {
    float: left;
    width: 45%;
}
.table_basic {
    clear: both;
    min-width: 500px;
    width: 70%;
    font-family: "굴림", Gulim, Arial, sans-serif;
    text-align: center;
    background: #fff;
}
.page_cs_main .section_contents .table_basic .txt_contents {
    padding: 0;
    text-align: left;
}
.page_cs_main .section_contents .table_basic {
    margin-top: -11px;
}
.right_contents {
    clear: both;
    position: relative;
    border-bottom: 1px solid #ddd; 
}
.section_contents { 
    position: relative;
}
.table_basic th {
    vertical-align: middle;
    padding: 10px 0;
}
.table_basic tr {
    border: 1px solid #ddd;
}
.mypage_type li {
    float: left;
    width: 25%;
    list-style:none;
}
.mypage_type li a {
    border-left: 1px solid #ddd;
    border-left-width: 1px;
    border-left-style: solid;
    border-left-color: rgb(221, 221, 221);
    box-sizing: border-box;
    list-style:none;
}
.mypage_type a {
    display: block;
    width: 100%;
    height: 30px;
    color: #b2b2b2;
    text-align: center;
    line-height: 30px;
}
.table_basic th {
    vertical-align: middle;
    padding: 10px 0;
} 
.page_cs_main .cell_cs_main {
    border-bottom: 1px solid #ddd;
    padding: 20px;
}
.title_cs {
    font-size: 18px;
    font-family: "Doppio One";
    color: #000;
    display: inline-block;
}


* { margin:0; padding:0; }
ul,li { list-style:none; }
a { text-decoration:none; color:#000; }
.tab { border:1px solid #ddd; border-left:none; background:#fff; overflow:hidden; }
.tab li { float:left; width:25%; border-left:1px solid #ddd; text-align:center; box-sizing:border-box; }
.tab li { display:inline-block; padding:20px; cursor:pointer; }
.tab li.on { background-color:#eee; color:#f00; }
.tab_con { clear:both; margin-top:5px; border:1px solid #ddd; }
.tab_con div { display:none; height:100px; background:#fff; line-height:100px; text-align:center; }




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
	<div class="banner banner10">
		<div class="container">
			<h2>Customer Service</h2> 
		</div>
	</div>
	<!-- //banner -->    
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Customer Service</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 
	<!-- mail -->
	<div class="mail">
		<div class="container" >
			<h3>Customer Service</h3> 
			</br></br>
					<div class ="page_box" style="margin-left:10%;">
					<h2 class="title-page">CS Center</h2>
				  	  <div class="section_search">
				  		<form name="QA_search" action="">
				  			<input class ="input_cs" name="q" type="text">
				  				<a href="javascript:void(0)" class ="btn_black_basic"
				  						 onclick="faqSearch(document.faq_search); return false;">
				  				FAQ 검색</a>
				  				</br></br><p class="box_reference_cs">*대부분의 질문은 검색을 통해 답변을 얻으실 가능성이 높습니다.</p>
				  		</form>
				 	 </div> 
				</div>							
	   		 </br>
	   		  <hr color="gray" size="10px">
	   	
	   		 <div class=right_contents_pd10">
	   			 <div class="cs_center" style="margin-left:10%;">
	   				 <span class="title-page" >TEL. 1588-7979</span></br>
	   			 		<p class="box_reference_cs">-평일 9:00~18:00</p>
						<p class="box_reference_cs">-점심 12:00~13:00</p> 
						<p class="box_reference_cs">-토, 일, 공휴일 휴무 </p> 
						<p class="box_reference_cs">-미응답시 시간을 두시고 전화주세요. </p>
						
					</div>
				<div class="cs_menu">
					<ul>
						<li>
							<a href="/app/cs/counsel"> 
								<span style="font-color=black;">1:1 Q&A</span></a>
								1:1 문의하기
						</li>
						<li>
							<a href="/app/cs/counsel">
								<span style="font-color=black;">My Question</span></a>
								나의질문
						</li>
						<li>
							<a href="/app/cs/counsel">
								<span style="font-color=black;">FAQ</span></a>
								자주묻는질문
						</li>
						<li>
							<a href="/app/cs/counsel">
								<span style="font-color=black;">My Order</span></a>
								나의주문
						</li>
						<li>
							<a href="/app/cs/counsel">
								<span style="font-color=black;">Notice</span></a>
								공지사항
						</li>
						<li>
							<a href="/app/cs/counsel">
								<span style="font-color=black;">Find ID</span></a>
								아이디찾기
						</li>
						<li>
							<a href="/app/cs/counsel">
								<span style="font-color=black;">Membership</span></a>
								회원혜택
						</li>
						<li>
							<a href="/app/cs/counsel">
								<span style="font-color=black;">Find PASS</span></a>
								비번찾기
						</li>	
					</ul>
			  </div>
		 </div>
		 	
	   			 <hr color="gray" size="10px">
	  		</br>
	  <div class="right_contents section_contents" style="margin-left:10%;">
	 	<h2 class="title-page">FAQ</h2>
	 	<span>자주 묻는 질문</span>
	 		
	 			<ul class="tab" id="tab">	
	 				<li>
	 					<a class="nav-item nav-link active" role="tab" href="#orderpay">주문 결제</a>
	 				</li>
	 				<li>
	 					<a class="nav-item nav-link" role="tab" href="#delivery">배송 안내</a>
	 				</li>
	 				<li>
	 					<a class="nav-item nav-link" role="tab" href="#ordercancel">주문 취소</a>
	 				</li>
	 				<li>
	 					<a class="nav-item nav-link" role="tab" href="#changerefund">교환 환불</a>
	 				</li>
	 			</ul>
		<section id="orderpay">
			<div class="tab_con" id="tab_con">
	 		<table class="table_basic" id="orderpay">
	 			<colgroup>
	 				<col width="8%" > 
	 			</colgroup>
	 			<thead> 
	 				<tr> 
	 					<th scope="col" style="text-align:center;">번호</th>   
	 					<th scope="col" style="text-align:center;">내용</th>
	 				</tr>	
	 			</thead>
	 			<tbody>
	 				
	 				<div><a href="javascript:void(0)" onclick="viewContent('a0', '', ''); return false;"> 입급확인은 
	 					언제, 어떻게 하나요?</a>
	 				
	 				</div>
	 				
	 				</div>
	 				
	 				<tr>
	 					<td>2</td>
	 					<td class="txt_contents">
	 					<a href="javascript:void(0)" onclick="viewContent('a0', '', ''); return false;"> 배송관련 기본
	 					사항입니다.</a>
	 					</td>
	 				</tr>
	 				<tr id="a0" style="display: none;">
	 					<td class="faq_q">답변</td>
	 					<td class="faq_a">
	 						<p>
	 						"파워에이드에서는 카드결제와 가상계좌 결제가 가능합니다. "
	 						<br>
	 						</p>
	 					</td>
	 				</tr>
	 				</div>
	 				
	 			
	 			</tbody>
	 		</table>
	 	</section>
	 		<table class="table_basic" id="delivery">
	 			<colgroup>
	 				<col width="8%" > 
	 			</colgroup>
	 			<thead> 
	 				<tr> 
	 					<th scope="col" style="text-align:center;">번호</th>   
	 					<th scope="col" style="text-align:center;">내용</th>
	 				</tr>	
	 			</thead>
	 			<tbody>
	 				<tr>
	 					<td>1</td>
	 					<td class="txt_contents">
	 					<a href="javascript:void(0)" onclick="viewContent('a0', '', ''); return false;"> 입급확인은 
	 					언제, 어떻게 하나요?</a>
	 					</td>
	 				</tr>
	 				<tr id="a0" style="display: none;">
	 					<td class="faq_q">답변</td>
	 					<td class="faq_a">
	 						<p>
	 						"파워에이드에서는 카드결제와 가상계좌 결제가 가능합니다. "
	 						<br>
	 						</p>
	 					</td>
	 				</tr>
	 				<tr>
	 					<td>2</td>
	 					<td class="txt_contents">
	 					<a href="javascript:void(0)" onclick="viewContent('a0', '', ''); return false;"> 배송관련 기본
	 					사항입니다.</a>
	 					</td>
	 				</tr>
	 				<tr id="a0" style="display: none;">
	 					<td class="faq_q">답변</td>
	 					<td class="faq_a">
	 						<p>
	 						"파워에이드에서는 카드결제와 가상계좌 결제가 가능합니다. "
	 						<br>
	 						</p>
	 					</td>
	 				</tr>
	 			</tbody>
	 		</table>
	 		</br></br>
	 	</div>
	 	</br></br> 
	 	<div class="cell_cs_main" style="margin-left:10%;">
	 		<h2 class="title-page" >Notice</h2>
	 			<span>공지사항</span>
	 			</h2>
	 			<div class="cs_notice">
	 				<p class="box_reference_cs">-고객센터 전화연결 지연이 있을 수 있습니다.</p>
					<p class="box_reference_cs">-후기 도용은 안됩니다.</p> 
					<p class="box_reference_cs">-스토어 적립금 사용 환불 관련은 전화로 부탁드립니다. </p>
	 			</div>		
	 		</div>
	 			 <hr color="gray" size="10px">
	  		</br></br>
	 	</div>
	  </div>
	<
	<!-- //mail -->
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
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
	<!-- //cart-js --> 
</body>
</html> 