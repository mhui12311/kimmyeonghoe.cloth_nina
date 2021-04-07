<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<html>
	<div class='header'>
	   <c:if test="${empty login}">
		      <div class='row'>
		         <div class='col'>
		            <div id = "logoTop"><a href = "<%=request.getContextPath() %>/">로고 이미지</a></div>
		         </div>
		         <div class='col-8'>
		               <div id = 'rightBar'>
		                  <a href = "<%=request.getContextPath() %>/user/login"> LOGIN </a><span>|</span>
		                  <a href = "<%=request.getContextPath() %>/user/join"><span> JOIN </span></a><span>|</span>
		                  <a href = "#"><span> CART </span></a><span>|</span>
		               </div>
		         </div>
		      </div>
		</c:if>
		
		<c:if test="${not empty login}">
			<div class='row'>
		         <div class='col'>
		            <div id = "logoTop"><a href = "<%=request.getContextPath() %>/">로고 이미지</a></div>
		         </div>
		         <div class='col-8'>
		               <div id = 'rightBar'>
		                  <a href = "#"> MY PAGE </a><span>|</span>
		                  <a href = "#"><span> CART </span></a><span>|</span>
		                  <a href = "<%=request.getContextPath() %>/user/logout"><span> LOGOUT </span></a><span>|</span>
		               </div>
		         </div>
		      </div>
		</c:if>
		
		<%@ include file ="./gnb.jsp"%>
		<div class='row'>
         <div class='col mt-3'>
            <div id = "banner"><br><p>배너 이미지</p></div>
         </div>
      </div><br><br>
   </div>
</html>
