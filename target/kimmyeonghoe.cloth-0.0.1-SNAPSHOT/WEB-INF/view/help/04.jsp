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
<div class='container content-wrap'>
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
	                  	<td><input type='text' id='title' value='세탁 문의'></td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><b>작성자</b></td>
	                  	<td><p>user</p></td>
	                  </tr>
	                  <tr>
	                 	 <td class='text-center'><b>문의 내용</b></td>
	                 	 <td>
	                 	 	<textarea cols='38' rows='5'></textarea>
	                 	 </td>
	                 </tr>
	                  <tr>
	                  	<td class='text-center'><b>카테고리</b></td>
	                  	<td>
		                  	<select id='categoryName' required>
								<option value='tshirts'>티셔츠</option>
								<option value='shirts'>셔츠</option>		
								<option value='sweatShirts'>맨투맨</option>			
								<option value='hoodies'>후디</option>
								<option value='others'>기타</option>				
							</select>
						</td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><b>옷이름</b></td>
	                  	<td>
		                  	<select id='cName' required>
								<option value='nonArmShirts'>기모 나시티</option>
								<option value='crewneckSweatShirts'>크루넥 맨투맨</option>		
								<option value='basicFleeceSweatShirt'>베이직 기모 맨투맨</option>			
								<option value='womanFleeceSlitSweatShirt'>여성 트임 기모 맨투맨</option>
								<option value='streetFleeceSweatShirt'>스트릿 기모 맨투맨</option>				
							</select>
	                  	</td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><b>파일 등록</b></td>
	                  	<td><input type='file' id='myImage' name='myImage' accept='.jpg, .jpeg, .png, .gif'/></td>
	                  </tr>
	               </tbody>
	            </table>
       		<nav>
       			<button type='button' class='btn btn-secondary float-right' id='fixQuestionBtn'
       				data-toggle='modal' data-target='#fixQuestionModal'>수정</button>
       		</nav>  
    	  	</form>
       </div>
	</div>
</div>
<div id='fixQuestionModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>			
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p>상품문의가 수정되었습니다</p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal' onclick='location.href="../help/01.html"'>확인</button>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp" %>