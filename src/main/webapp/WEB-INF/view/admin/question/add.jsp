<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<html>
<%@ include file="../../include/lib.jsp" %>
<title>THEJOEUN ShoppingMall</title>

<script>

function isVal(field) {
	let check = false;
	
	if(field.length && field.val()) check = true;
	return check;
}

function init(){
	$('#addQuestionBtn').click(() => { 
		var userId = $('#userId').val();
		if(isVal($('#title')) && isVal($('#content')) && isVal($('#category')) && isVal($('#clothName'))) {
			$.ajax({
				url: 'add',
				method: 'post',
				contentType: 'application/json',
				data: JSON.stringify({
					title: $('#title').val(),
					content: $('#content').val(),
					category: $('#category').val(),
					clothName: $('#clothName').val()
				}),
				success: result => {
					$('#addSuccessModal').modal();
					location.href="${pageContext.request.contextPath}/admin/question/list";					
				}
			})			
		} else {
			console.log('추가가 실패했습니다.');
			location.href="${pageContext.request.contextPath}/admin/question/add";
		}
	});
}
$(init);
</script>	
<style>
#subMenu {
	min-width: 120px;
}
</style>
<div class='container'>
	<%@ include file="../../include/adminHeader.jsp" %>

   <div class='row'>
      <%@ include file="../../include/adminGnb.jsp" %>
		<div class='col-9'>
		   <div class='row'>
		      <div class='col'>
		         <h5><b>| 상품 문의</b></h5>
		      </div>
		   </div> 		
			<div class='form-group row'>
	            <table class='table'>
	               <tbody id='addQuestion'>
	                  <tr>
	                  	<td class='text-center'><label for='title'><b>제목</b></label></td>
	                  	<td><input type='text' class='form-control' id='title'></td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><label for='userId'><b>작성자</b></label></td>
	                  	<td><p>user</p></td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><label for='content'><b>문의 내용</b></label></td>
	                  	<td><textarea cols='38' rows='5' class='form-control' name='content' id='content'></textarea></td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><label for='category'><b>카테고리</b></label></td>
	                  	<td>
		                  	<select id='category'name='category' required>
								<option value=''>카테고리 선택</option>		                  	
								<option value='tshirts'>티셔츠</option>
								<option value='shirts'>셔츠</option>		
								<option value='sweatShirts'>맨투맨</option>			
								<option value='hoodies'>후디</option>			
							</select>
						</td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><label for='clothName'><b>옷이름</b></label></td>
	                  	<td>
		                  	<select id='clothName' name='clothName' required>
								<option value=''>옷이름 선택</option>		                  	
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
	            <button type='button' class='btn btn-secondary float-right' id='addQuestionBtn'>등록</button>
    		</div>
       </div>
	</div>
</div>

<div id='addSuccessModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>			
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p>상품 문의가 등록되었습니다.</p>
			</div>
			<div class='modal-footer'>
				<button type='submit' class='btn btn-secondary' data-dismiss='modal' id='addQuestionBtn'>확인</button>
			</div>
		</div>
	</div>
</div>
<div class='row' style='height:200px'></div>
	<%@ include file="../../include/footer.jsp" %>
</body>
</html>      
      
