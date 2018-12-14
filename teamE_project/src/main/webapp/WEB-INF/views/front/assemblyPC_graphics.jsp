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
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=4"> <strong>그래픽</strong> </a></li> 
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=5"> SSD </a></li> 
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=6"> 하드디스크 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=7"> ODD </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=8"> 파워 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=9"> 케이스 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=10"> 키보드 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=11"> 마우스 </a></li>
									    <li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=12"> 모니터 </a></li>
										<li><a href="/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=13"> 쿨링/튜너</a></li>
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
					<H1 style="margin: 10px;"> 그래픽 </H1>
						<div class="select_list">
							<ul>
								<select class="select" name="CATEGORY3_NUM" id="CATEGORY3_NUM" title="제조사" style="width:89%;">
									<option value='ASRock' >  ASRock   </option>
									<option value='ASUS' >  ASUS  </option>
									<option value='GIGABYTE' >  GIGABYTE  </option>
									<option value='AMD' >  AMD  </option>
									<option value='NVIDIA' >  NVIDIA  </option>
									<option value='GelL' >  GelL</option>
									<option value='갤럭시' >  갤럭시 </option>
									<option value='리드텍' >  리드텍 </option>
									<option value='엠탑코리아' >  엠탑코리아  </option>
									<option value='한성컴퓨터' >  한성컴퓨터  </option>
								    <option value='세컨드찬스' >  세컨드찬스  </option>
								</select>
								<input type="button" value="검색" onClick="Product_Search()">
							</ul>
							<ul>
								<select class="select" name="TAG_1" id="TAG_1" title="칩셋 제조사">
									<option value='' selected> -- 칩셋 제조사 -- </option>
									<option value='NVIDIA' >  NVIDIA   </option>
									<option value='AMD(ATi)' >  AMD(ATi)  </option>
									<option value='Matrox' >  Matrox  </option>
								</select>
								<select class="select" name="TAG_2" id="TAG_2" title="인터페이스">
									<option value='' selected> -- "인터페이스" -- </option>
									<option value='PCle3.0x16' >  PCle3.0x16  </option>
									<option value='PCle2.0x16' >  PCle2.0x16  </option>
								</select>
								<select class="select" name="TAG_3" id="TAG_3" title="메모리 종류">
									<option value='' selected> -- 메모리 종류 -- </option>
									<option value='HBM(1세대)' >  HBM(1세대)  </option>
									<option value='GDDR5(DDR5)' >  GDDR5(DDR5)  </option>
									<option value='GDDR3(DDR3)' >  GDDR3(DDR3)  </option>
									<option value='GDDR2(DDR2)' >  GDDR2(DDR2)  </option>
								</select>
							</ul>
							<ul>
								<select class="select" name="TAG_4" id="TAG_4" title="메모리 용량">
									<option value='' selected> -- 메모리 용량 -- </option>
									<option value='32GB' >  32GB </option>
									<option value='24GB' >  24GB </option>
									<option value='16GB' >  16GB </option>
									<option value='12GB' >  12GB </option>
									<option value='11GB' >  11GB </option>
									<option value='8GB' >  8GB </option>
									<option value='6GB' >  6GB </option>
									<option value='5GB' >  5GB </option>
									<option value='4GB' >  4GB </option>
									<option value='3GB' >  3GB </option>
									<option value='2GB' >  2GB </option>
									<option value='1GB' >  1GB </option>
								</select>
							
								<select class="select" name="TAG_5" id="TAG_5" title="메모리 버스">
									<option value='' selected> -- 메모리 버스 -- </option>
									<option value='8192-bit' > 8192-bit  </option>
									<option value='4096-bit' > 4096-bit  </option>
									<option value='3072-bit' > 3072-bit  </option>
									<option value='2048-bit' > 2048-bit  </option>
									<option value='512-bit' > 512-bit  </option>
									<option value='488-bit' > 488-bit  </option>
									<option value='384-bit' > 384-bit  </option>
									<option value='352-bit' > 352-bit  </option>
									<option value='320-bit' > 320-bit  </option>
									<option value='256-bit' > 256-bit  </option>
									<option value='192-bit' > 192-bit  </option>
									<option value='160-bit' > 160-bit  </option>
									<option value='128-bit' > 128-bit  </option>
									<option value='96-bit' > 96-bit  </option>
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
  
    <script>
    function Product_Search() {
    var CATEGORY3_NUM =  $("#CATEGORY3_NUM option:selected").val();
    var TAG_1 =  $("#TAG_1 option:selected").val();
    var TAG_2 =  $("#TAG_2 option:selected").val();
    var TAG_3 =  $("#TAG_3 option:selected").val();
    var TAG_4 =  $("#TAG_4 option:selected").val();
    var TAG_5 =  $("#TAG_5 option:selected").val();

    
    location.replace("/assemblyPC?CATEGORY1_NUM=1&CATEGORY2_NUM=4&CATEGORY3_NUM="+CATEGORY3_NUM+"&TAG_1="+TAG_1+"&TAG_2="+TAG_2+"&TAG_3="+TAG_3+"&TAG_4="+TAG_4+"&TAG_5="+TAG_5);
	   
    }
    </script>
    <%@include file="front_include/footer.jsp" %>
	<!-- //cart-js --> 
</body>
</html>