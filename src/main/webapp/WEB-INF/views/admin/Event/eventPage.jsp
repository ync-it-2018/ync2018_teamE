<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp" %>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
    <!-- Main content -->
    <section class="content">
      <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
	
				


					<div class="box">
            <div class="box-header with-border">
             	<section id="new">
						<h3 class="page-header page-header icon-subheading">EVENT</h3>		 
						<div class="row fontawesome-icon-list" style="margin-left:5%;"> 
						</br>
						<%int i = 1; %>
						<c:forEach items="${list }" var="uploadVO">
							<div  class="col-md-4" style="margin-bottom:5%;" onclick="onClick(<%=i++%>)"><img src="${uploadVO.event_url }" ></div>
							<input type="hidden" name="event_num" id="event_num" value="${uploadVO.event_num }"> 
						</c:forEach>
							
							
							<%-- <div  class="col-md-4" style="margin-bottom:5%;" onclick="onClick(1)"><img src="${uploadVO.event_url }" ></div>
							<input type="hidden" name="event_num" id="event_num" value="1"> 
							<a href="../../front/MSI?event_num=2"><div class="col-md-4" style="margin-bottom:5%;"><img src="../../../resources/front/images/nong.jpg" title="농협카드 이벤트"></div></a>
							<a href="../../front/MSI?event_num=3"><div class="col-md-4" style="margin-bottom:5%;"><img src="../../../resources/front/images/appco.jpg" title="앱코 엔코어 조립PC 이벤트"></div></a>
							<a href="../../front/MSI?event_num=4"><div class="col-md-4" style="margin-bottom:5%;"><img src="../../../resources/front/images/master.jpg" title="쿨러마스터PC 구매 이벤트"></div></a> 
							<a href="../../front/MSI?event_num=5"><div class="col-md-4" style="margin-bottom:5%;"><img src="../../../resources/front/images/asrock.jpg" title="에즈락 미니PC 이벤트"></div></a> 
							<a href="../../front/MSI?event_num=6"><div class="col-md-4" style="margin-bottom:5%;"><img src="../../../resources/front/images/photo.jpg" title="포토구매 후기 이벤트"></div></a> --%>							
						</div> 
					</section>

            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

<script>

function onClick(event_num) {
	
	var openWin = window.open("uploadForm?event_num="+event_num,"uploadForm","width=300,height=200");
	openWin.document.getElementById("event_num").value =  "1";
}
</script>
    
<%@include file="../include/footer.jsp" %>


 
 
  