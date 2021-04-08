<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<title>THEJOEUN ShoppingMall</title>
<%@ include file ="../../include/lib.jsp"%>
<script>
function isVal(field) {
	let check = false;
	if(field.length && field.val()) check = true;
	
	return check;
}

function init() {
	$('#addNoticeBtn').click(() => {
		if(isVal($('#title')) && isVal($('#content')) && isVal($('#regDate'))) {
			$.ajax({
				url: 'add',
				method: 'post',
				contentType: 'application/json',
				data: JSON.stringify({
					title: $('#title').val(),
					content: $('#content').val(),
					regDate: $('#regDate').val(),
				}),
				success: result => {
					$('#successModal').modal();
				}
			})
		} else {
			console.log("공지사항이 추가 되지 않았습니다.")
		}
	});
}

$(init);
</script>
<div class='container contents-wrap'>
	<%@ include file="../../include/adminHeader.jsp" %>
   <div class='row'>
      <%@ include file="../../include/adminGnb.jsp" %>
		<div class='col-9'>
			<div class='row mt-3 justify-content-start'>
				<h5><b>| 공지 사항 작성</b></h5>
			</div>		
			<div class='form-group row'>
	            <table class='table'>
	               <tbody>
	                  <tr>
	                  	<td class='text-center'><label for='title' class='form-label'><b>제목</b></label></td>
	                  	<td><input class='form-control' type='text' id='title' name='title'></td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><label for='regDate' class='form-label'><b>등록일</b></label></td>
	                  	<td id='regDate'></td>
	                  </tr>
	                  <tr>
	                 	 <td class='text-center'><label for='content' class='form-label'><b>내용</b></label></td>
	                 	 <td>
	                 	 	<textarea class='form-group' name='content' cols=60  rows= 10></textarea>
	                 	 </td>
	                 </tr>
	               </tbody>
	            </table>
	       		<nav>
	       			<button type='button' class='btn btn-outline-secondary float-right ml-1' id='addNoticeBtn'>저장</button>	       		
	       			<button type='button' class='btn btn-outline-secondary float-right'>취소</button>
	       		</nav>
			</div>
		</div>      			
	</div>
</div>
<div id='successModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p>공지가 등록되었습니다.</p>
			</div>
			<div class='modal-footer'>
				<button type='submit' class='btn btn-outline-dark' data-dismiss='modal' id='addClothBtn'>확인</button>
			</div>
		</div>
	</div>
</div>
	<%@ include file ="../../include/footer.jsp"%>
