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
					<h3 class="box-notice_title">회원 관리 페이지</h3>
				</div>
				
				
				
				<div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							<th>회원 아이디</th>
							<th>회원 이름</th>
							<th>회원 이메일</th>
							<th>회원 휴대폰 번호</th>
							<th>회원 마일리지</th>
							
							
						</tr>
					
					
					<c:forEach items="${list}" var="userInfoVO">
					
						<tr>
							<td>
							<a href='/admin/UserInfo/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&user_id=${userInfoVO.user_id}'>${userInfoVO.user_id}
							</a>
							</td>
							<td>${userInfoVO.user_name}</td>
							<td>${userInfoVO.user_email}</td>
							<td>${userInfoVO.user_phonenum}</td>
							<td>${userInfoVO.mile_price}</td>
						</tr>
					
					</c:forEach>
					
					</table>
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