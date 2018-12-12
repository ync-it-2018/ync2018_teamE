<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.12/handlebars.min.js"></script>
<script src="/resources/js/upload.js"></script>
<script>
//js에서 로그인 여부를 체크하기 위한 global 변수
var loginNow=true;
</script>
<style type="text/css">
    .popup {position: absolute;}
    .back { background-color: gray; opacity:0.5; width: 100%; height: 300%; overflow:hidden;  z-index:1101;}
    .front { 
       z-index:1110; opacity:1; boarder:1px; margin: auto; 
      }
     .show{
       position:relative;
       max-width: 1200px; 
       max-height: 800px; 
       overflow: auto;       
     } 
  	
</style>

<div class='popup back' style="display:none;"></div>
<div id="popup_front" class='popup front' style="display:none;">
<img id="popup_img">
</div>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">회원 정보 상세페이지</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post"><input
						type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="user_id">회원 아이디</label>
						<input type="text" name="user_id" class="form-control" value="${userInfoVO.user_id}" readonly="readonly">
					</div>
					
					<div class="form-group">
						<label for="name">회원 이름</label>
						<input type="text" name="user_name" class="form-control" value="${userInfoVO.user_name}" readonly="readonly">
					</div>
					
					<div class="form-group">
						<label for="birthday">회원 생일</label>
						<input type="text" name="user_birthday" class="form-control" value="${userInfoVO.user_birthday}" readonly="readonly">
					</div>
					
					<div class="form-group">
						<label for="email">회원 이메일</label>
						<input type="text" name="user_email" class="form-control" value="${userInfoVO.user_email}" readonly="readonly">
					</div>
					
					<div class="form-group">
						<label for="phone">회원 휴대폰번호</label>
						<input type="text" name="user_phonenum" class="form-control" value="${userInfoVO.user_phonenum}" readonly="readonly">
					</div>
					
					<div class="form-group">
						<label for="address">회원 주소</label>
						<input type="text" name="user_address" class="form-control" value="${userInfoVO.user_address}" readonly="readonly">
					</div>
					
					<div class="form-group">
						<label for="mile">회원 마일리지</label>
						<input type="text" name="user_mile" class="form-control" value="${userInfoVO.mile_price}" readonly="readonly">
					</div>
				</div>
				<!-- /.box-body -->

				
				<button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
			    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
			</div>



			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) --> 
	
	
</section>
<!-- /.content -->

<!-- Drag & Drop 첨부파일용 handlebars template -->
<script id="templateAttach" type="text/x-handlebars-template">
	<li data-src='{{fullName}}'>
	  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
	  <div class="mailbox-attachment-info">
		<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
		</span>
	  </div>
	</li>                
</script>  




<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	
	$("#removeBtn").on("click", function(){
		
		// 등록된 게시글 삭제 처리
		formObj.attr("action", "/admin/UserInfo/removePage");
		formObj.submit();
	});
	
	$("#goListBtn ").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/admin/UserInfo/list");
		formObj.submit();
	});
	
	
	
});
</script>

<%@include file="../include/footer.jsp"%>
