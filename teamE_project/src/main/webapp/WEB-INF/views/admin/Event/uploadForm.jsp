<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
iframe {
	width: 0px;
	height: 0px;
	border: 0px
}
</style>
</head>
<body>


	<%
		int event_num = Integer.parseInt(request.getParameter("event_num"));
	%>
	

	<form id='form1' action="uploadForm" method="post"
		enctype="multipart/form-data">
		<input type='file' name='file'> <input type="submit"  id="button" onClick="onClick()">
		<input type="hidden" name="event_num" id="event_num" value="<%=event_num %>" > 
		
	</form>
<!-- 
	<iframe name="zeroFrame"></iframe>

	<script>
		function addFilePath(msg) {
			alert(msg);
			document.getElementById("form1").reset();
		}
	</script>
 -->

	<!-- 	<form id='form1' action="uploadForm" method="post"
		enctype="multipart/form-data">
		<input type='file' name='file'> <input type='submit'>
	</form>
 -->
</body>

<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form1']");
	
	console.log(formObj);
	
	
	
	$("#event_num").on("click", function(){
		
		var params = $("#form1").serialize();
		$.ajax(
		{
			type : 'POST',
			url : '/admin/Event/uploadForm',
			data : params,
			success : function(data)
					{									
						window.close();
					},
		complete : function(data) {

            // 통신이 실패했어도 완료가 되었을 때 이 함수를 타게 된다.

            // TODO
			window.close();

     		 }

		});
		
		/* // 등록된 게시글 삭제 처리
		formObj.attr("action", "/admin/Event/uploadForm");
		formObj.submit(); */
		
	
	});
	
	
	
		
});

</script>
</html>

