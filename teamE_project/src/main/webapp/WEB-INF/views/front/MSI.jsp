<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@include file="front_include/header.jsp" %>

<style>
 
	.toListBtns {
 	     text-align: center;
  	     margin: 20px 0 40px;
   	     font-size: 20px;
	}
	
	.styWBg {
   		 background: #fff;
    	 color: #8c8c8c;
         border: 3px solid #8c8c8c;
    }
	
	.toListBtns a, .toListBtns button {
   		 font-weight: bold;
   		 padding: 10px 0;
   		 margin: 0 2px;
   		 width: 240px;
   		 display: inline-block;
	}
	
	
</style>


<!-- //end-smooth-scrolling --> 
</head> 
<body> 
	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>EVENT</h2>
		</div>
	</div>
	<!-- //banner -->   
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>EVENT</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 	
	<!-- short codes -->
	<div class="typo codes">
				<div class="container"> 
					<h3 class="agileits-title">EVENT</h3></br></br>
							<div class="col-md-4" style="margin-left:12%;" id="msi"><img id="img" src="${event_img.EVENTIMG_PATH}" >
					</div>
				</div></br></br>
			<article class="toListBtns">
				<a href="/event" class ="styWBg">이벤트 목록</a>
		    </article>	
	</div>
	<%@include file="front_include/footer.jsp" %>
</body>
</html>