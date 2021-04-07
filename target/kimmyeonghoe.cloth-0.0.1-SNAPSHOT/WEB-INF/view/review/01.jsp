<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>THEJOEUN ShoppingMall</title>

<%@ include file ="../include/lib.jsp"%>

<script>
function changeView(address){

	window.location.href=address;

}
function showPopUp(address) { 
	window.open(address, '리뷰' ,'scrollbars=yes width=800, height=700');
}
</script>
<style>
[id*='cloth1']{
	width: 100px;
	height: 110px;
	margin-top: 5px;
	margin-bottom: 5px;
	margin-right: 5px;
	margin-left: 5px;
	float: left;
	border: 1px solid lightgrey;
	text-align: center;
}

[id*='client']{
	width: 120px;
	height: 130px;
	margin-top: 1px;
	margin-bottom: 5px;
	margin-right: 5px;
	margin-left: 5px;
	float: left;
	border: 1px solid lightgrey;
	text-align: center;
}

[id*='modal']{
	width: 480px;
	height: 520px;
	margin-top: 1px;
	margin-bottom: 1px;
	margin-right: 1px;
	margin-left: 0px;
	float: center;
	border: 0px solid lightgrey;
	text-align: center;
}
#jum {
	border-top: 1px dashed #bbb;
}

#nopadding {
	margin: 0;
	padding: 0;
}
</style>

<div class='container'>
	<%@ include file="../include/header.jsp" %>
	<div class='row' style='height:30px'></div>
	<div class='row '>
		<div class='col-2'>
			<h5>| 리뷰 (2,000)</h5>
		</div>
	</div>
	<div class='row'>
		<hr color='black' width='90%' align='center'>
	</div>
	<div class='row'>
		<div id='nopadding' class='col mt-5 d-flex justify-content-end'>
			<p>16</p>
		</div>
		<div class='col-2 mt-3 d-flex justify-content-center'>
			<div id = "cloth1"><br><br><p>옷 이미지</p></div>
		</div>
		<div class='col-4'>
			<a href='../cloth/06.html'>기모 나시티</a>
			<p>★★★★★</p>
			<p>너무 좋아요</p>
		</div>
		<div class='col-3'>
			<div id = "client1"><br><br><a onclick='showPopUp("./03.html")'>리뷰 이미지</a></div>
		</div>
		<div class='col-2 mt-5'>
			<p>user</p>
			<p>2021-03-31</p>
		</div>
		<hr width='90%' align='center'>
	</div>
	<div class='row'>
		<div id='nopadding' class='col mt-5 d-flex justify-content-end'>
			<p>15</p>
		</div>
		<div class='col-2 mt-3 d-flex justify-content-center'>
			<div id = "cloth1"><br><br><p>옷 이미지</p></div>
		</div>
		<div class='col-4'>
			<a href='../cloth/06.html'>기모 나시티</a>
			<p>★★★★★</p>
			<p>팔은 춥고 몸은 따셔요. 여름에도 겨울에도 입기 힘든 옷!...</p>
		</div>
		<div class='col-3'>
			<div id = "client1"><br><br><a onclick='showPopUp("./03.html")'>리뷰 이미지</a></div>
		</div>
		<div class='col-2 mt-5'>
			<p>dongupsin1</p>
			<p>1592-05-15</p>
		</div>
		<hr width='90%' align='center'>
	</div>
	<div class='row'>
		<div id='nopadding' class='col mt-5 d-flex justify-content-end'>
			<p>14</p>
		</div>
		<div class='col-2 mt-3 d-flex justify-content-center'>
			<div id = "cloth1"><br><br><p>옷 이미지</p></div>
		</div>
		<div class='col-4'>
			<a href='../cloth/06.html'>기모 나시티</a>
			<p>★★★★★</p>
			<p>팔은 춥고 몸은 따셔요. 여름에도 겨울에도 입기 힘든 옷!...</p>
		</div>
		<div class='col-3'>
			<div id = "client1"><br><br><a onclick='showPopUp("./03.html")'>리뷰 이미지</a></div>
		</div>
		<div class='col-2 mt-5'>
			<p>dongupsin1</p>
			<p>1592-05-15</p>
		</div>
		<hr width='90%' align='center'>
	</div>
	<div class='row'>
		<div id='nopadding' class='col mt-5 d-flex justify-content-end'>
			<p>13</p>
		</div>
		<div class='col-2 mt-3 d-flex justify-content-center'>
			<div id = "cloth1"><br><br><p>옷 이미지</p></div>
		</div>
		<div class='col-4'>
			<a href='../cloth/06.html'>기모 나시티</a>
			<p>★★★★★</p>
			<p>팔은 춥고 몸은 따셔요. 여름에도 겨울에도 입기 힘든 옷!...</p>
		</div>
		<div class='col-3'>
			<div id = "client1"><br><br><a onclick='showPopUp("./03.html")'>리뷰 이미지</a></div>
		</div>
		<div class='col-2 mt-5'>
			<p>dongupsin1</p>
			<p>1592-05-15</p>
		</div>
		<hr width='90%' align='center'>
	</div>
	<div class='row'>
		<div id='nopadding' class='col mt-5 d-flex justify-content-end'>
			<p>12</p>
		</div>
		<div class='col-2 mt-3 d-flex justify-content-center'>
			<div id = "cloth1"><br><br><p>옷 이미지</p></div>
		</div>
		<div class='col-4'>
			<a href='../cloth/06.html'>기모 나시티</a>
			<p>★★★★★</p>
			<a href='03.html'>팔은 춥고 몸은 따셔요. 여름에도 겨울에도 입기 힘든 옷!...</a>
		</div>
		<div class='col-3'>
			<div id = "client1"><br><br><a onclick='showPopUp("./03.html")'>리뷰 이미지</a></div>
		</div>
		<div class='col-2 mt-5'>
			<p>dongupsin1</p>
			<p>1592-05-15</p>
		</div>
		<hr color='black' width='90%' align='center'>
	</div>
	<div class='row'>
		<div class='col-3'>
		</div>
		<div class='col d-flex justify-content-center'>
			<p>
				<a href='#'>< 이전</a>
				<a href='#'>[1]</a>
				<a href='#'>[2]</a>
				<a href='#'>[3]</a>
				<a href='#'>[4]</a>
				<a href='#'>[5]</a>
				<a href='#'>다음 ></a>
			</p>
		</div>
		<div class='col-3 d-flex justify-content-end'>
			<button type='button' class='btn btn-outline-secondary' onclick="location.href='./02.html'">글 쓰기</button>
		</div>
	</div>
</div>
<div id='reviewImageModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-body'>
				<div id = "modal"><br><br>리뷰 이미지</div>
			</div>
		</div>
	</div>
</div>
<div class='row'><br></div>

<%@ include file="../include/footer.jsp" %>