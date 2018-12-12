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
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='ask_num' value="${CServiceVO.ask_num}"> <input
						type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Title</label>
						<input type="text" name='title' class="form-control" value="RE:${CServiceVO.ask_title}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="form-control" name="ask_answercontent" rows="3" readonly="readonly">${CServiceVO.ask_answercontent}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label>
						<input type="text" name="writer" class="form-control" value="${CServiceVO.admin_id}" readonly="readonly">
					</div>
				</div>
				<!-- /.box-body -->
				
					<!-- 첨부파일이 보여지는 곳 -->
				<ul class="mailbox-attachments clearfix uploadedList"></ul>
				
			
				
				    <button type="submit" class="btn btn-warning" id="modifyBtn">Modify</button>
				    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
				
			    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
			</div>



			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->
	
          
<!-- Modal -->
<div id="modifyModal" class="modal modal-primary fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body" data-rno>
        <p><input type="text" id="replytext" class="form-control"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
        <button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>      
	
	
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
	
	
		formObj.attr("action", "/admin/CServiceBoard/modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	
	
	$("#removeBtn").on("click", function(){
		
		// 등록된 게시글 삭제 처리
		formObj.attr("action", "/admin/CServiceBoard/removePage");
		formObj.submit();
	});
	
	$("#goListBtn ").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/admin/CServiceBoard/CServiceList");
		formObj.submit();
	});
		
});
</script>

<%@include file="../include/footer.jsp"%>
