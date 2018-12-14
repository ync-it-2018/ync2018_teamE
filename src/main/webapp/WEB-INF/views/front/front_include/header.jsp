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
<title>Electronic Store a Ecommerce Online Shopping Category Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
<link href="resources/front/css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/front/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="resources/front/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="resources/front/js/jquery.min.js"></script>
<link rel="stylesheet" href="resources/front/css/jquery.countdown.css" /> <!-- countdown --> 
<!-- //js -->   
<!-- start-smooth-scrolling -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.slider').bxSlider();
    });
  </script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

<script>
$(document).ready(function(){
	$("#modifyBtn").on("click", function(){
		alert("회원 정보가 수정 되었습니다.");
	});
	
	$("#logoutBtn").on("click", function(){
		alert("로그아웃 되었습니다.");
	});
	
	$("#registerbtn").on("click", function(){
		alert("회원 가입 되었습니다. 로그인 해주세요");
	});
});
</script>  
<!-- //end-smooth-scrolling --> 
</head> 
<body>
	<!-- for bootstrap working -->
	<script type="text/javascript" src="resources/front/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<!-- header modal -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;</button>
					<!-- 버튼누를시 로그인 화면 -->
					<h4 class="modal-title" id="myModalLabel">유저 로그인 페이지</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1">
							<div class="sap_tabs">	
								<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
							<c:choose>
  								<c:when test="${empty ulogin.user_id}">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>로그인</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>회원가입</span></li>
									</ul>		
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="/front/user/loginPost" method="post">			
													<input name="user_id" placeholder="아이디" type="text" required="">						
													<input name="user_password" placeholder="비밀번호" type="password" required="">										
													<div class="sign-up">
														<input type="submit" id="loginBtn" value="로그인"/>
													</div>
												</form>
											</div>
										</div> 
									</div>
									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="/front/user/register" method="post">			
													<input placeholder="아이디" name="user_id" type="text" required="">			
													<input placeholder="이름"  name="user_name" type="text" required="">
													<input placeholder="생년월일" name="user_birthday" type="text" required="">
													<input placeholder="비밀번호" name="user_password" type="password" required="">		
													<input placeholder="주소" name="user_address" type="text" required="">
													<input placeholder="이메일" name="user_email" type="email" required="">	
													<input placeholder="휴대폰번호" name="user_phonenum" type="text" required="">
													<input name="mile_price" type="text" value= "500" required="" readonly="readonly">	
													<div class="sign-up">
														<input type="submit" id="registerbtn" value="회원가입"/>
													</div>
												</form>
											</div>
										</div>
									</div> 		
									        					            	      
							</c:when>
								 <c:otherwise>
								 <ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>현재 회원 정보</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>회원 정보 수정</span></li>
								</ul> 
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="/front/user/logout" method="get">			
													<p>${ulogin.user_name} 님 환영합니다</p>
													<p>내 마일리지 : ${ulogin.mile_price}</p>								
													<div class="sign-up">
														<input type="submit" id="logoutBtn" value="로그아웃"/>
													</div>
												</form>
										</div>
									</div> 
								</div>	
								<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="/front/user/modifyPage" method="post">
													<input name="user_id" type="text" value="${ulogin.user_id}" readonly="readonly">			
													<input name="user_name" type="text" value="${ulogin.user_name}" readonly="readonly">
													<input name="user_birthday" type="text" value="${ulogin.user_birthday}" readonly="readonly">
													<input name="user_password" type="password" value="${ulogin.user_password}" readonly="readonly">
													<input name="mile_price" type="text" value="${ulogin.mile_price}" readonly="readonly">		
													<input placeholder="변경할 주소" name="user_address" type="text" value="${ulogin.user_address}" required="">
													<input placeholder="변경할 이메일" name="user_email" type="email" value="${ulogin.user_email}" required="">	
													<input placeholder="변경할 휴대폰번호" name="user_phonenum" type="text" value="${ulogin.user_phonenum}"required="">	
													<div class="sign-up">
														<input type="submit" id="modifyBtn" value="정보수정" />
													</div>
												</form>
											</div>
										</div>
									</div> 			
								 </c:otherwise>
							</c:choose>
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
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		/* $('#myModal88').modal('show'); */
		function search() {
			var keyword = $('input[name=keyword]').val();
			location.replace("/search?keyword="+keyword+"&sort=1");
		}
	</script>  
	<!-- header modal -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_login">
				<a href="#" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
			</div>
			<div class="w3l_logo">
				<h1><a href="/"><img src="resources/front/images/Powerade_logo.png" style="width:330px;height:100px;"></a></h1>
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