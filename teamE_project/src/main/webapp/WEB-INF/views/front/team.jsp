<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@include file="front_include/header.jsp" %>

<style>
.img-responsive1,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: 200px;
}


.col-md-3 {
    width: 20%;
}
</style>
<!-- //end-smooth-scrolling --> 
</head> 
<body> 

	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>About Us</h2>
		</div>
	</div>
	<!-- //banner -->   
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>team</li>
			</ul>
		</div>
	</div>
	<!-- team -->
	<div class="team">
		<div class="container">
			<h3>Meet Our Team</h3>
			<div class="wthree_team_grids">
				<div class="col-md-3 wthree_team_grid">
					<img src="resources/front/images/aa1.jpg" alt=" " class="img-responsive1" />
					<h4>노현호 <span>팀장</span></h4>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<img src="resources/front/images/aa2.jpg" alt=" " class="img-responsive1" />
					<h4>이용희 <span>팀원</span></h4>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<img src="resources/front/images/aa5.jpg" alt=" " class="img-responsive1" />
					<h4>정민섭<span>팀원</span></h4>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<img src="resources/front/images/aa3.jpg" alt=" " class="img-responsive1" />
					<h4>이영태 <span>팀원</span></h4>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<img src="resources/front/images/aa4.jpg" alt=" " class="img-responsive1" />
					<h4>유성우<span>팀원</span></h4>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
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
	<%@include file="front_include/footer.jsp" %>
</body>
</html>