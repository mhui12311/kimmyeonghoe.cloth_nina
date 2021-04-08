<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<html>
<%@ include file="../../include/lib.jsp" %>
<title>THEJOEUN ShoppingMall</title>
<script>
function isVal(field){
	let check = false;
	let fieldName;
	
	if(field.length)
		if(field.val()) check = true;
	return check;
}

function getList(){
	$('#questionContent').empty();
	$.ajax({
		type:'post',
		url:"<%=request.getContextPath() %>/admin/question/list"
	}).done(questions => {
		if(questions.length) {
			let questionList = [];
			
			$.each(questions, (idx, question) => {
				questionList.unshift(
					`<tr>
						<th>
							<div class='form-check form-check-inline'>
								<input type='radio' class='form-check-input' 
									value='\${question.questionNum}' name='questionNum' id='questionNum'/>
								<label class='form-check-label' for='questionNum'>&nbsp; \${question.questionNum}</label>
							</div>
						</th>
						<td>\${question.title}</td>	
						<td>\${question.userId}</td>							
						<td>\${question.regDate}</td>
					</tr>`
				);
			});
			
			$('#questionContent').append(questionList.join(''));
		} else {
			$('#questionContent').append('<tr><td colspan=4 class=text-center>x.</td></tr>');
		}
	});
}

function init(){
	getList();

	$('#delQuestionBtn').click(() => {
		if(isVal($('#questionNum:checked'))) {
			$('#bodyMsg').text('삭제하시겠습니까?');
			$('#commonModal').modal();
		} else {
			$('#bodyMsg').text('삭제할 문의를 선택하세요.')
			$('#commonModal').modal();
		}
	});
	
	$('#okBtn').click(() => {
		var delNum = $('#questionNum:checked').val();
		alert($('#questionNum:checked').val());
		$.ajax({
			url:`${pageContext.request.contextPath}/admin/question/del/\${delNum}`,
			method: 'post'
		}).done(result => {
			if(result != null){
				getList();	
			}
		});
	});
	
	$('#okBtn').click(()=> {
		$('#commonModal').modal('hide');
	})
}
$(init);
</script>	
<style>
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
		   <form>  
	            <table class='table'>
	               <thead class='text-center'>
	                  <tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
	               </thead>
	               <tbody class='text-center' id='questionContent'>
	               </tbody>
	            </table>
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
				<nav>
					<a href="<%=request.getContextPath() %>/admin/question/add"><button class='btn btn-secondary float-right'>글쓰기</button></a>
					<a href="<%=request.getContextPath() %>/admin/question/fix"><button type='button' class='btn btn-secondary float-right'>수정</button></a>
					<button type='button' class='btn btn-secondary float-right mr-1' id='delQuestionBtn'>삭제</button>
				</nav>	         
			</form>            	
       </div>
   </div>
</div>
<div id='commonModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>			
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p id='bodyMsg'></p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal'>아니오</button>
				<button type='button' class='btn btn-secondary' id='okBtn'>예</button>
			</div>
		</div>
	</div>
</div>
<div class='row' style='height:200px'></div>
	<%@ include file="../../include/footer.jsp" %>
</body>
</html>