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
</script>
<style>
</style>

<div class='container'>
	<%@ include file="../include/header.jsp" %>
	<form> 
		<div class='row'>
			<div id='nopadding' class='col-3'>
				<h3>| 리뷰 수정</h3>
			</div>
		</div>
		<hr>
		<div class='row d-flex justify-content-center'>
			<div class='col'>
				<select name='kategorie' >
					<option value=''>카테고리 선택</option>
					<option value='반팔'>반팔</option>
					<option value='긴팔'>긴팔</option>
					<option value='후드'>후드</option>
				</select>
			
				<select name='clothName' >
					<option value=''>옷 선택</option> 
					<option value='반팔'>옷 이름1</option>
					<option value='긴팔'>옷 이름2</option>
					<option value='후드'>옷 이름3</option>
				</select>
			</div>
		</div>
		<hr>
		<div class='row'>
			<div class='col'>
				<div class='startRadio'>
					<label>별점: </label> 
					<input type='radio' name='star' value='1' > <span>★</span>
					<input type='radio' name='star' value='2'> <span>★★</span>
					<input type='radio' name='star' value='3'> <span>★★★</span>
					<input type='radio' name='star' value='4'> <span>★★★★</span>
					<input type='radio' name='star' value='5'> <span>★★★★★</span>
				</div>
			</div>
		</div>
		<hr>
		<div class='row d-flex justify-content-center'>
			<div class='col'>
				<textarea rows='10' cols='80'></textarea>
			</div>
		</div>
		<hr>
		<div class='row d-flex justify-content-center'>
			<div class='col'>
				<input type='file' value='파일 첨부'/>
			</div>
			<div class='col d-flex justify-content-end'>
				<button type='button' class='btn btn-secondary' onclick='clickEvent()'>취소</button>
				<button type='button' class='btn btn-secondary ml-2' onclick='clickEvent()'>수정</button>
			</div>
		</div>
	</form>
	<div class='row'><br></div>
</div>

<%@ include file="../include/footer.jsp" %>