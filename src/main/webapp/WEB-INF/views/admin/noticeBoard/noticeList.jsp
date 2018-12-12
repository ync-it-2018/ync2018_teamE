<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp" %>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-notice_title">LIST ALL PAGE</h3>
				</div>
				
				
				
				<div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">No.</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일자</th>
						</tr>
					
					
					<c:forEach items="${list}" var="noticeVO">
					
						<tr>
							<td>${noticeVO.notice_num}</td>
							<td>
							<!-- <a href='/board/read?notice_num=${noticeVO.notice_num}'>${noticeVO.notice_title}</a>-->
						<a href='/admin/noticeBoard/noticeReadPage${pageMaker.makeSearch(pageMaker.cri.page) }&notice_num=${noticeVO.notice_num}'>${noticeVO.notice_title}

							</a>
							</td>
							<td>${noticeVO.admin_id}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
									value="${noticeVO.notice_date}" /></td>
						</tr>
					
					</c:forEach>
					
					</table>
					<br>
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
									href="noticeList${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:if>
	
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
										<a href="noticeList${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>
	
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="noticeList${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
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