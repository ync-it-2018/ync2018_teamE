<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp" %>


<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
</style>


<!-- Main qna_contents -->
<section class="qna_contents">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-qna_title">MODIFY BOARD</h3>
				</div>
				<!-- /.box-header -->

<form role="form" action="modifyPage" method="post">

	<input type='hidden' name='page' value="${cri.page}"> 
	<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
	<input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">

					<div class="box-body">
						
						<div class="form-group">
							<input type="hidden"
								name='qna_num' class="form-control" value="${qnAVO.qna_num}"
								readonly="readonly" >
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">qna_title</label> <input type="text"
								name='qna_title' class="form-control" value="${qnAVO.qna_title}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">qna_contents</label>
							<textarea class="form-control" name="qna_contents" rows="3">${qnAVO.qna_contents}</textarea>
						</div>
						<div class="form-group" >
							<label for="exampleInputEmail1" >Writer</label> <input
								type="text" name="admin_id" class="form-control"
								value="${qnAVO.admin_id}" readonly = "readonly">
						</div>
					
					
						
					</div>
					<!-- /.box-body -->

	<div class="box-footer">
		<div>
			<hr>
		</div>

		

    <button type="submit" class="btn btn-primary">SAVE</button> 
    <input type="button" class="btn btn-warning" value="CANCEL">

	</div>
</form>

<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>



<script>
$(document).ready(function(){
			
	$(".btn-warning").on("click", function(){
		// controller에서 pageMaker 객체를 model에 넣어줘서 makeSearch를 사용한 코드
			window.history.back();
		/*  // 기존 코드
			self.location = "/sboard/list?page=${cri.page}&perPageNum=${cri.perPageNum}"
				+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
		*/
	});
	
});





</script>





			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.qna_contents -->
</div>
<!-- /.qna_contents-wrapper -->

<%@include file="../include/footer.jsp" %>

