<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>THEJOEUN ShoppingMall</title>

<%@ include file ="../include/lib.jsp"%>

<script>
</script>
<style>
[id*='client']{
	width: 400px;
	height: 520px;
	float: left;
	border: 1px solid lightgrey;
	text-align: center;
	padding: 0;
}

[id*='cloth']{
	width: 100px;
	height: 120px;
	float: left;
	border: 1px solid lightgrey;
	text-align: center;
}
</style>

<div class='container'>
	<%@ include file="../include/header.jsp" %>
		<div class='row'>
			<div class='col-6 d-flex justify-content-start ml-3 mt-3'>
				<div id = "client1"><br><br><p>리뷰 이미지</p></div>
			</div>
			<div class='col-1'>
			</div>
			<div class='col-3 ml-5'>
				<h3>dongupsin1</h3>
				<br>
				<p>★★★★★</p>
				<p>1592-05-15</p>
				<br>
				<p>팔은 춥고 몸은 따셔요. 여름에도 겨울에도 입기 힘든 옷! 강추합니다. 나만 당할 순 없어요!</p>
				<div class='row'>
					<div class='col'>
						<div id = "cloth1"><br><br><p>옷 이미지</p></div>
					</div>
				</div>
				<div class='row'>
					<div class='col'>
						<br><br><p>기모 나시티</p>
						<a href='../cloth/06.html'>구매하러 가기 =></a>
					</div>
				</div>
			</div>
		</div>
	<div class='row'><br></div>		
</div>

<%@ include file="../include/footer.jsp" %>