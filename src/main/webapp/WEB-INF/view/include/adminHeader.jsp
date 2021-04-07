<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<html>
	<header>
		<div class='row'>
			<div class='col'>
				<div id="logoTop">
					<a href="../main.html" id='logoText'>로고 이미지</a>
				</div>
			</div>
			<div class='col-8'>
				<div id="nav">
					<div id="rightBar">
						<a href="#">사용자 페이지 이동</a> <span>|</span> <a
							href="<%=request.getContextPath() %>/user/logout"><span>ADMIN LOGOUT</span></a> <span>|</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<hr>
	<!-- /include: header -->
</html>
