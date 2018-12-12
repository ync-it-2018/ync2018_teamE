<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp" %>
<style>
.menu { height:50px; width:24.6%; text-align:center; }
</style>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">1:1문의</h3>
				</div>
				
				<table border = "1" style="width:100%">
			<tr>
			<td>
			<a href="../CServiceBoard/CServiceList"><Button class="menu">1:1문의</Button></a>
			<a href="../QnABoard/list"><Button class="menu">QnA</Button></a>
			<a href="../PQuestionBoard/list"><Button class="menu">상품문의</Button></a>
			<a href="../DQuestionBoard/list"><Button class="menu">배송문의</Button></a>
			</td>
			</tr>
			</table>
			<br>
			<br>
				
				
				
				<div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							
							<th>제목</th>
							<th>작성자</th>
							
						</tr>
					
					
					<c:forEach items="${list}" var="qnAVO">
					
						<tr>
							
							<td>
							<!-- <a href='/board/read?qna_num=${qnAVO.qna_num}'>${qnAVO.qna_title}</a>-->
						<a href='/admin/QnABoard/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&qna_num=${qnAVO.qna_num}'>${qnAVO.qna_title}

							</a>
							</td>
							<td>${qnAVO.admin_id}</td>
						</tr>
					
					</c:forEach>
					
					</table>
					<div style="width:100%">
						<button style="position: absolute; right: 30px;" id="newBtn" class="btn btn-warning">작성</button>
					</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
				
					<div class="text-center">
							<ul class="pagination">
								 
								 <c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:if>
	
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
										<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>
	
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:if>
								
							</ul>
						</div>
				
				</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<form id="jobForm">
  <input type='hidden' name="page" value=${pageMaker.cri.perPageNum}>
  <input type='hidden' name="perPageNum" value=${pageMaker.cri.perPageNum}>
</form>
<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
	
	/*
	$(".pagination li a").on("click", function(event){
		
		event.preventDefault(); 
		
		var targetPage = $(this).attr("href");
		
		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action","/board/listPage").attr("method", "get");
		jobForm.submit();
	});
	*/
	
	$(document).ready(function() {
		$('#searchBtn').on("click",function(event) {
			self.location = "list"
							+ '${pageMaker.makeQuery(1)}'
							+ "&searchType="
							+ $("select option:selected").val()
							+ "&keyword=" + $('#keywordInput').val();

		});

		$('#newBtn').on("click", function(evt) {
			self.location = "register";
		});
	});
</script>
<%@include file="../include/footer.jsp" %>