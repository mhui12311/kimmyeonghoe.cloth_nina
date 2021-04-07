<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<title>THEJOEUN ShoppingMall</title>
<%@ include file ="../../include/lib.jsp"%>

<script>
function isVal(field) {
	let check = false;
	let fieldName;
	
	if(field.length)
		if(field.val()) check = true;
	return check;
}

function listNotices() {
	$('#clothList').empty();
	$.ajax('admin/notice/list')
	.done(notices => {
		if(notices.length) {
			let noticeList = [];
			
			$.each(cloths, (idx, cloth) => {
				noticeList.unshift(
					`<tr>
						<th>
							<div class='form-check form-check-inline'>
								<input type='radio' class='form-check-input'
									value='\${notice.noticeNum}' name='noticeNum' id='noticeNum'/>
								<label class='form-check-label' for='noticeNum'>&nbsp; \${notice.noticeNum}</label>
							</div>
						</th>
						<td>\${notice.title}</td>
						<td>\${notice.regDate}</td>
					</tr>`	
				);
			});
			$('#noticeList').append(noticeList.join(''));
		} else {
			$('#noticeList').append('<tr><td colspan=4 class=text-center>옷이없습니다.</td></tr>')
		}
	});
}

function init(){
	listNotices();
	
	$('fixNoticeBtn').click(() => {
		if(isVal($('#noticeNum:checked'))) {
			
		}
	});
	
	$('#delNoticeBtn').click(() => {
		if(isVal($('#noticeNum:checked'))) {
			$('#delNoticeModal').modal();
		}
	});
	
	$('#delNoticeOkBtn').click(() => {
		$.ajax({
			url: `notice/del/\${$('#noticeNum:checked').val()}`,
			method: 'delete'
		}).done(cnt => {
			$('#listNoticeBtn').click();
			
			$('#delNoticeModal').modal('hide');
			listNotices();
		})
	});
}

</script>

<div class='container contents-wrap'>
	<%@ include file ="../../include/header.jsp"%>
   <div class='row'>
      <!-- include: gnb -->
      <div class='col-3'>
         <div id='adminMenu' class='accordian mt-3'>
            <div class='card'>
               <div id='heading1' class='card-header'>
                  <h2 class='mb-0'>
                     <button class='btn btn-block text-left' type='button'
                     data-toggle='collapse' data-target='#body1'>회원</button>
                  </h2>
               </div>
               <div id='body1' class='collapse' data-parent='#adminMenu'>
                  <div class='card-body'>
                     <a href='#'><span>-회원목록</span></a><br> 
                     <a href='#'><span>-자동메일</span></a><br>
                     <a href='#'><span>-탈퇴회원목록</span></a><br>
                     <a href='#'><span>-이용약관</span></a><br>
                     <a href='#'><span>-주문조회</span></a>
                  </div>
               </div>
            </div>
            <div class='card'>
               <div id='heading2' class='card-header'>
                  <h2 class='mb-0'>
                     <button class='btn btn-block text-left' type='button'
                        data-toggle='collapse' data-target='#body2'>상품</button>
                  </h2>
               </div>
               <div id='body2' class='collapse' data-parent='#adminMenu'>
                  <div class='card-body'>
                     <a href='#'><span>-상품조회</span></a><br>
                     <a href='#'><span>-상품등록</span></a><br>
                     <a href='#'><span>-상품삭제</span></a>
                  </div>
               </div>
            </div>
            <div class='card'>
               <div id='heading3' class='card-header'>
                  <h2 class='mb-0'>
                     <button class='btn btn-block text-left' type='button'
                        data-toggle='collapse' data-target='#body3'>게시판</button>
                  </h2>
               </div>
               <div id='body3' class='collapse' data-parent='#adminMenu'>
                  <div class='card-body'>
                     <a href='#'>-공지사항</a><br>
                     <a href='#'><span>-FAQ</span></a><br>
                     <a href='#'><span>-문의</span></a><br>
                     <a href='#'><span>-리뷰</span></a>
                  </div>
               </div>
            </div>
            <div class='card'>
               <div id='heading4' class='card-header'>
                  <h2 class='mb-0'>
                     <button class='btn btn-block text-left' type='button'
                        data-toggle='collapse' data-target='#body4'>홈페이지</button>
                  </h2>
               </div>
               <div id='body4' class='collapse' data-parent='#adminMenu'>
                  <div class='card-body'>
                     <a href='#'><span>-로고</span></a><br>
                     <a href='#'><span>-배너</span></a><br>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- /include: gnb -->

		<div class='col-9'>
			<div class='form-group row mt-3 justify-content-start'>
				<h5><b>| 공지 사항</b></h5>
			</div>
			<div class='form-group row justify-content-center'>
				<div class='col'>
		            <table class='table'>
		               <thead class='text-center'>
		                  <tr>
		                  	<th>번호</th>
		                  	<th>제목</th>
		                  	<th>작성일</th>
		                  </tr>
		               </thead>
		               <tbody class='text-center' id='noticeList'>
							<tr><td colspan='4' class='text-center'>등록된 옷이 없습니다.</td></tr>
					   </tbody>
					</table>				
				</div>
			</div>
			<div class='row'>
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
			</div>
			<div class='row'>
				<div class='col-3 d-flex justify-content-start'><button type='button' class='btn btn-outline-secondary mr-1' >상단</button></div>
				<div class='col d-flex justify-content-end'>
					<button type='button' class='btn btn-outline-secondary mr-1' id='delNoticeBtn'>삭제</button>
					<button type='button' class='btn btn-outline-secondary mr-1' id='fixNoticeBtn'>수정</button>
					<button type='button' class='btn btn-outline-secondary mr-1' id='addNoticeBtn'>작성</button>       			
				</div>
			</div>
		</div>
	</div>
</div>
<div class='row' style='height:30px'></div>

<div id='delNoticeModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>			
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p>공지글을 삭제 하시겠습니까?</p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal'>아니오</button>
				<button type='button' class='btn btn-secondary' id='delNoticeOkBtn' data-dismiss='modal'>예</button>
			</div>
		</div>
	</div>
</div>

	<%@ include file ="../../include/footer.jsp"%>