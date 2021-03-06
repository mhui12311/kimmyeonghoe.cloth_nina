<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>THEJOEUN ShoppingMall</title>

<%@ include file ="../include/lib.jsp"%>

<script>
var myImage = $("#myImage");
if(myImage.val() != ""){
	var ext = myImage.val().split('.').pop().toLowerCase();
	if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg'])== -1){
		alert('등록할 수 없는 파일입니다.');
		myImage.val("");
		return;
	}
};
</script>	
<style>
#subMenu {
	min-width: 120px;
}
</style>

<div class='container contents-wrap'>
	<%@ include file="../include/header.jsp" %>
   <div class='row'>
		<div class='col-3'>
			<table class='table table-bordered'>
	            <thead class='thead-light text-center'>
	               <tr>
	                  <th colspan='3'>고객센터</th>
	               </tr>
	            </thead>
	            <tbody class='text-center'>
	               <tr>
	                  <td><a href = "../notice/01.html">공지사항</a></td>
	               </tr>
	               <tr>
	                  <td><a href = "../notice/03.html">FAQ<br>(자주하는 질문)</a></td>
	               </tr>
	               <tr>
						<td><a href = "../help/01.html"><b>상품 문의</b></a></td>
	               </tr>
	            </tbody>
	         </table>
		</div>
		
		<div class='col-9'>
		   <div class='row'>
		      <div class='col'>
		         <h5><b>| 상품 문의</b></h5>
		      </div>
		   </div>
			<form>
	            <table class='table'>
	               <tbody>
	                  <tr>
	                  	<td class='text-center'><b>제목</b></td>
	                  	<td id='title'>세탁 문의</td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><b>작성자</b></td>
	                  	<td id='userName'>user</td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><b>작성일자</b></td>
	                  	<td id='writenDate'>2021-03-31</td>
	                  </tr>
	                  <tr>
	                 	 <td class='text-center'><b>문의 내용</b></td>
	                 	 <td id='content'>세탁기 돌려도 괜찮나요?</td>
	                 </tr>
	                  <tr>
	                  	<td class='text-center'><b>카테고리</b></td>
	                  	<td id='category'>티셔츠</td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><b>옷이름</b></td>
	                  	<td id='clothName'>기모 나시티</td>
	                  </tr>
	               </tbody>
	            </table>
	       		<nav>
	       			<a href='04.html'><button type='button' class='btn btn-secondary float-right' onclick='location.href="./help/04.html"'>수정</button></a>
					<button type='button' class='btn btn-secondary float-right mr-1' id='delQuestionBtn'
						data-toggle='modal' data-target='#delQuestionModal'>삭제</button>
	       		</nav>
    	  	</form>
       </div>
	</div>
</div>
<div id='delQuestionModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>			
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p>상품 문의를 삭제하시겠습니까?</p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal'>아니오</button>
				<button type='button' class='btn btn-secondary' id='delCartOkBtn' onclick='location.href="../help/01.html"'>예</button>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>