<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@include file="front_include/header.jsp" %>

<script type="text/javascript">
	$(function () {	
		tab('#tab',0);	
	});
	
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
	<!-- //mail -->
	<%@include file="front_include/footer.jsp" %>
</body>
</html> 