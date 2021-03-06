<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@include file="front_include/header.jsp" %>
	<!-- banner -->
	
	<div class="slider">
    <div><img src="resources/front/images/banner1.PNG" style="width:100%; height:100%"></div>
    <div><img src="resources/front/images/banner2.PNG" style="width:100%; height:100%"></div>
    <div><img src="resources/front/images/banner3.PNG" style="width:100%; height:100%"></div>
    
  </div>
  
	<!-- //banner --> 
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="col-md-5 wthree_banner_bottom_left">
				<h3>HOT EVENT</h3><br />
				<div style="width:400px;height:500px;">
					
					<a href="/MSI?event_num=1"><img src="resources/front/images/MSI.jpg" style="width:100%;height:100%;"></a>
							
				</div> 
					
			</div>
			<div class="col-md-7 wthree_banner_bottom_right">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home">Best_item</a></li>
					</ul>
						<hr style="border-top: 1px solid black;  margin-top:-15px;">
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
							<div class="agile_ecommerce_tabs">
									<c:forEach items="${listAll}" var="listAll">	
									<div class="col-md-4 agile_ecommerce_tab_left">
									<div style="width: 100%; height: 100%;">
										<img src="resources/front/images/${listAll.PRODUCTIMG_S}" alt=" " class="img-responsive" />
									</div> 
									
									<a href="/detail?PRODUCT_NUM=${listAll.PRODUCT_NUM}" style="font-size:15px;">${listAll.PRODUCT_NAME}</a>
									<div class="simpleCart_shelfItem">
										<p>$ <i class="item_price">${listAll.PRODUCT_PRICE}</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="${listAll.PRODUCT_NAME}" /> 
											<input type="hidden" name="amount" value="${listAll.PRODUCT_PRICE}" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>  
									</div>
								 </div>
								 </c:forEach>
							   <div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div> 
			</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //banner-bottom --> 
	<!-- modal-video -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/3.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>The Best Mobile Phone 3GB</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>
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
								<p><span>$380</span> <i class="item_price">$350</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
									<input type="hidden" name="amount" value="350.00">   
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
	<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/9.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Multimedia Home Accessories</h4>
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
								<p><span>$180</span> <i class="item_price">$150</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Headphones"> 
									<input type="hidden" name="amount" value="150.00">   
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
							<img src="resources/front/images/11.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Quad Core Colorful Laptop</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia  deserunt.</p>
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
								<p><span>$880</span> <i class="item_price">$850</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Laptop"> 
									<input type="hidden" name="amount" value="850.00">   
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
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/14.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Cool Single Door Refrigerator </h4>
							<p>Duis aute irure dolor inreprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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
								<p><span>$950</span> <i class="item_price">$820</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
									<input type="hidden" name="amount" value="820.00">   
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
							<img src="resources/front/images/17.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>New Model Mixer Grinder</h4>
							<p>Excepteur sint occaecat laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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
								<p><span>$460</span> <i class="item_price">$450</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
									<input type="hidden" name="amount" value="450.00">   
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
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/36.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Dry Vacuum Cleaner</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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
	<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/front/images/37.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Kitchen & Dining Accessories</h4>
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
								<p><span>$280</span> <i class="item_price">$250</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Induction Stove"> 
									<input type="hidden" name="amount" value="250.00">   
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
	<!-- //modal-video -->
	<!-- banner-bottom1 -->
	<div class="banner-bottom1">
		<div class="agileinfo_banner_bottom1_grids">
			<div class="col-md-7 agileinfo_banner_bottom1_grid_left" style="margin-left:0px;">
				
			</div>
			<div class="col-md-5 agileinfo_banner_bottom1_grid_right">
				<h4>hot deal</h4>
				<div class="timer_wrap">
					<div id="counter"> </div>
				</div>
				<script src="resources/front/js/jquery.countdown.js"></script>
				<script src="resources/front/js/script.js"></script>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //banner-bottom1 --> 
	<!-- special-deals -->
	<div class="special-deals" style="margin-left:-60px;">
		<div class="container">
			<h2>Game Product</h2>
			<script>

			var countnoAll = 6;
			function selblockA(selNo) {
				for(i=1; i<=countnoAll; i++){document.getElementById("blockA_"+i).style.display="none";}
				for(i=1; i<=countnoAll; i++){if(selNo==i) {document.getElementById("blockA_"+i).style.display="block";}}
			}

			function seltabA(selNo) {
				for(i=1; i<=countnoAll; i++){
					document.getElementById("tabA_"+i).style.backgroundColor="#fafafa";
					document.getElementById("tabA_"+i).style.color="#666666";
					document.getElementById("tabA_"+i).style.fontWeight="normal";
					document.getElementById("tabA_"+i).style.borderBottom ="1px solid #e1e1e1";
					if(selNo==i) {
						document.getElementById("tabA_"+i).style.backgroundColor="#717b86";
						document.getElementById("tabA_"+i).style.color="#FFFFFF";
						document.getElementById("tabA_"+i).style.fontWeight="bold";
						document.getElementById("tabA_"+i).style.borderBottom="1px solid #717b86";
					}					
				}
			}

			</script>
			<script>

			$(function(){
				$(".tabTd").mouseover(function(){
					var index = $(this).index();
					$(".tabTd").css({"background":"#fafafa","color":"#717b86","font-weight":"normal"})
					$(this).css({"background":"#717b86","color":"#fff","font-weight":"bold"})
					$(".block").hide();
					$(".block").eq(index).show();
				})
				$(".tabTd").eq(0).trigger("mouseover");
			})
			
			</script>
			
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-top:1px solid #e1e1e1; border-collapse: collapse;">
		<tbody><tr> 
			<!-- 마우스오버시 색상 #717b86 / 아닐시 #fafafa -->
										<td class="tabTd" width="10%" height="30" align="center" style="background: rgb(250, 250, 250); font-size: 14px; border-right: 1px solid rgb(225, 225, 225); border-left: 1px solid rgb(225, 225, 225); cursor: pointer; color: rgb(113, 123, 134); font-weight: normal;">배틀그라운드</td>
							<td class="tabTd" width="10%" height="30" align="center" style="background: rgb(113, 123, 134); font-size: 14px; border-right: 1px solid rgb(225, 225, 225); border-left: 1px solid rgb(225, 225, 225); cursor: pointer; color: rgb(255, 255, 255); font-weight: bold;">리그 오브 레전드</td>
							<td class="tabTd" width="10%" height="30" align="center" style="background: rgb(250, 250, 250); font-size: 14px; border-right: 1px solid rgb(225, 225, 225); border-left: 1px solid rgb(225, 225, 225); cursor: pointer; color: rgb(113, 123, 134); font-weight: normal;">피파 온라인4</td>
							<td class="tabTd" width="10%" height="30" align="center" style="background: rgb(250, 250, 250); font-size: 14px; border-right: 1px solid rgb(225, 225, 225); border-left: 1px solid rgb(225, 225, 225); cursor: pointer; color: rgb(113, 123, 134); font-weight: normal;">서든어택</td>
							<td class="tabTd" width="10%" height="30" align="center" style="background: rgb(250, 250, 250); font-size: 14px; border-right: 1px solid rgb(225, 225, 225); border-left: 1px solid rgb(225, 225, 225); cursor: pointer; color: rgb(113, 123, 134); font-weight: normal;">로스트아크</td>
							<td class="tabTd" width="10%" height="30" align="center" style="background: rgb(250, 250, 250); font-size: 14px; border-right: 1px solid rgb(225, 225, 225); border-left: 1px solid rgb(225, 225, 225); cursor: pointer; color: rgb(113, 123, 134); font-weight: normal;">검은사막</td>
							<td class="tabTd" width="10%" height="30" align="center" style="background: rgb(250, 250, 250); font-size: 14px; border-right: 1px solid rgb(225, 225, 225); border-left: 1px solid rgb(225, 225, 225); cursor: pointer; color: rgb(113, 123, 134); font-weight: normal;">스팀게임</td>
							<td class="tabTd" width="10%" height="30" align="center" style="background: rgb(250, 250, 250); font-size: 14px; border-right: 1px solid rgb(225, 225, 225); border-left: 1px solid rgb(225, 225, 225); cursor: pointer; color: rgb(113, 123, 134); font-weight: normal;">오버워치</td>
					
		</tr>
	</tbody></table>
	<!-- 수정할부분  -->
	<div class="block" style="display: none;"> 
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1">
				
								<tbody><tr> 
					<td valign="top" bgcolor="f3f3f4" width="700"><img src="resources/front/images/chuchyn_412_1.png"></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=7"><img src="resources/front/images/chuchyn_422_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=8"><img src="resources/front/images/chuchyn_423_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4"><a href="detail?PRODUCT_NUM=9"><img src="resources/front/images/chuchyn_424_1.png"></a></td>
				</tr>
			</tbody></table>
		</div>
		<div class="block" style="display: block;"> 
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1">
				
								<tbody><tr> 
					<td valign="top" bgcolor="f3f3f4" width="700"><img src="resources/front/images/chuchyn_413_1.png"></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=10"><img src="resources/front/images/chuchyn_425_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=11"><img src="resources/front/images/chuchyn_426_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4"><a href="detail?PRODUCT_NUM=12"><img src="resources/front/images/chuchyn_427_1.png"></a></td>
				</tr>
			</tbody></table>
		</div>
		<div class="block" style="display: none;"> 
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1">
				
								<tbody><tr> 
					<td valign="top" bgcolor="f3f3f4" width="700"><img src="resources/front/images/chuchyn_414_1.png"></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=20"><img src="resources/front/images/chuchyn_428_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=21"><img src="resources/front/images/chuchyn_429_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4"><a href="detail?PRODUCT_NUM=22"><img src="resources/front/images/chuchyn_430_1.png"></a></td>
				</tr>
			</tbody></table>
		</div>
		<div class="block" style="display: none;"> 
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1">
				
								<tbody><tr> 
					<td valign="top" bgcolor="f3f3f4" width="700"><img src="resources/front/images/chuchyn_415_1.png"></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=23"><img src="resources/front/images/chuchyn_431_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=24"><img src="resources/front/images/chuchyn_432_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4"><a href="detail?PRODUCT_NUM=25"><img src="resources/front/images/chuchyn_433_1.png"></a></td>
				</tr>
			</tbody></table>
		</div>
		<div class="block" style="display: none;"> 
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1">
				
								<tbody><tr> 
					<td valign="top" bgcolor="f3f3f4" width="700"><img src="resources/front/images/chuchyn_416_1.png"></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=26"><img src="resources/front/images/chuchyn_434_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=27"><img src="resources/front/images/chuchyn_435_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4"><a href="detail?PRODUCT_NUM=28"><img src="resources/front/images/chuchyn_436_1.png"></a></td>
				</tr>
			</tbody></table>
		</div>
		<div class="block" style="display: none;"> 
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1">
				
								<tbody><tr> 
					<td valign="top" bgcolor="f3f3f4" width="700"><img src="resources/front/images/chuchyn_417_1.png"></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=29"><img src="resources/front/images/chuchyn_437_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=30"><img src="resources/front/images/chuchyn_438_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4"><a href="detail?PRODUCT_NUM=31"><img src="resources/front/images/chuchyn_439_1.png"></a></td>
				</tr>
			</tbody></table>
		</div>
		<div class="block" style="display: none;"> 
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1">
				
								<tbody><tr> 
					<td valign="top" bgcolor="f3f3f4" width="700"><img src="resources/front/images/chuchyn_418_1.png"></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=15"><img src="resources/front/images/chuchyn_440_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=16"><img src="resources/front/images/chuchyn_441_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4"><a href="detail?PRODUCT_NUM=17"><img src="resources/front/images/chuchyn_442_1.png"></a></td>
				</tr>
			</tbody></table>
		</div>
		<div class="block" style="display: none;"> 
			<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" style="border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1">
				
								<tbody><tr> 
					<td valign="top" bgcolor="f3f3f4" width="700"><img src="resources/front/images/chuchyn_461_1.png"></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=18"><img src="resources/front/images/chuchyn_462_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4" style="border-right:1px solid #e1e1e1"><a href="detail?PRODUCT_NUM=13"><img src="resources/front/images/chuchyn_463_1.png"></a></td>
					<td valign="top" bgcolor="f3f3f4"><a href="detail?PRODUCT_NUM=14"><img src="resources/front/images/chuchyn_464_1.png"></a></td>
				</tr>
			</tbody></table>
		</div>
			
		</div>
	</div>
	<!-- //special-deals -->
	<%@include file="front_include/footer.jsp" %>
</body>
</html>