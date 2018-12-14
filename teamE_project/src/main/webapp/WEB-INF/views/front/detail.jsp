<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@include file="front_include/header.jsp" %>


<!-- //end-smooth-scrolling --> 
</head> 
<body> 
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
	<div class="single" style="padding: 2em 0;">
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
						<div class="thumb-image"> <img src="resources/front/images/${serverTime.PRODUCTIMG_M}" data-imagezoom="true" class="img-responsive" alt=""> </div>
						
				</div>
				<!-- flexslider -->
				<!-- zooming-effect -->
					<script src="resources/front/js/imagezoom.js"></script>
				<!-- //zooming-effect -->
			</div>
			<div class="col-md-8 single-right">
			   
				<div class="description">
					<p style="font-size: 15px; color: black;">판매 가격 : ${serverTime.PRODUCT_PRICE}</p>
						<hr style="border-top: 1px solid lightgray;">
					<p style="font-size: 15px; color: black;">제품 번호 : ${serverTime.PRODUCT_NUM}</p>
						<hr style="border-top: 1px solid lightgray;">
					<p style="font-size: 15px; color: black;"> 적립금 : ${serverTime.PRODUCT_MILE}</p>
						<hr style="border-top: 1px solid lightgray;">
					<p style="font-size: 15px; color: black;"> 배송비 : 2,500원  (1박스) </p>
						<hr style="border-top: 1px solid lightgray;">
				</div>
				
				<div class="simpleCart_shelfItem">
					<form action="#" method="post">
						<input type="hidden" name="cmd" value="_cart">
						<input type="hidden" name="add" value="1"> 
						<input type="hidden" name="w3ls_item" value="${serverTime.PRODUCT_NAME}"> 
						<input type="hidden" name="amount" value="${serverTime.PRODUCT_PRICE}">   
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