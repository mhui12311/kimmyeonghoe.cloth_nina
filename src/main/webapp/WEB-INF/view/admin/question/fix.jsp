<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<html>
<%@ include file="../../include/lib.jsp" %>
<title>THEJOEUN ShoppingMall</title>

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

function isVal(field){
	let check = false;
	let fieldName;
	
	if(field.length)
		if(field.val()) check = true;
	return check;
}

function getList(){
	$.ajax({
		method:'post',
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
			$('#delQuestionModal').modal();
		} else alert('삭제할 문의를 선택해주세요.', false);
	});
	
	$('#delQuestionOkBtn').click(() => {
		$.ajax({
			url: `admin/question/del/\${$('#questionNum:checked').val()}`,
			method: 'delete'
		}).done(cnt => {
			$('#questionContent');			
			$('#delQuestionModal').modal('hide');
		}).fail(err => alert('문의를 삭제하지 못했습니다.'), false);
	});
	
	$('#addQuestionBtn').click(() => {
		if(isVal($('#title')) && isVal($('#userId')) && isVal($('#regDate'))) {
			let question = {
				title: $('#title').val(),
				userId: $('#userId').val(),
				regDate: $('#regDate').val()
			};
			
			$.ajax({
				url: 'question/add',
				method: 'post',
				data: question
			}).done(cnt => {
				$('#questionContent');
			}).fail(err => alert('문의를 추가하지 못했습니다.'), false);
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
<div class='row' style='height:200px'></div>
	<%@ include file="../../include/footer.jsp" %>
</body>
</html>      