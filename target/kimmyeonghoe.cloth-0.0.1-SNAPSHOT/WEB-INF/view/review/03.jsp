<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>THEJOEUN ShoppingMall</title>

<%@ include file ="../include/lib.jsp"%>

<script>
function clickEvent(){
	window.close();
}
function init(){
	$('#delOkBtn').click(function(){
		$('#deleteModal').modal('hide');
		clickEvent();
	})
}
$(init);
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

<div class='container mt-3'>
	<%@ include file="../include/header.jsp" %>
	<div class='row'>
		<div class='col-6 d-flex justify-content-start ml-3 mt-3'>
			<div id = "client1"><br><br><p>리뷰 이미지</p></div>
		</div>
		<div class='col-1'>
		</div>
		<div class='col-3 ml-5'>
			<h3>기모 나시티</h3>
			<br>
			<p>user</p>
			<p>★★★★★</p>
			<p>2021-03-31</p>
			<br>
			<p id='reviewContent'>너무 좋아요</p>
			<div class='row'>
				<div class='col'>
					<div id = "cloth1" ><br><br><p>옷 이미지</p></div>
				</div>
			</div>
			<div class='row'>
				<div class='col'>
					<a href='../cloth/06.html'>구매하러 가기 =></a>
				</div>
			</div>
		</div>
	</div>
	<div class='row mt-3'>
		<div class='col'>
		</div>
		<div class='col d-flex justify-content-end'>
			<button type='button' class='btn btn-secondary' onclick="location.href='04.html'">수정</button>
			<button type='button' class='btn btn-secondary ml-2' data-toggle='modal' data-target='#deleteModal'>삭제</button>
		</div>
	</div>
</div>
	<div class='row'><br></div>

<div id='deleteModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
		<div class='modal-header'>			
			<button type='button' class='close' data-dismiss='modal'>
				<span>&times;</span>
			</button>
		</div>
			<div class='modal-body'>
				<span>삭제하시겠습니까?</span>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal'>취소</button>
				<button type='submit' class='btn btn-secondary ml-2'id="delOkBtn">확인</button>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp" %>