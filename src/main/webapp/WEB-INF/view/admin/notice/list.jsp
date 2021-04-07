<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<title>THEJOEUN ShoppingMall</title>
<%@ include file ="../../include/lib.jsp"%>

<script>
function refreshList(){
	$.ajax({
		url:"${pageContext.request.contextPath}/admin/notice/list"
	}).done(notices => {
		if(notices.length) {
			let noticeList = [];
			
			$.each(notices, (idx, notice) => {
				noticeList.unshift(
					`<tr>
						<th></th>
						<th>
							<div class='form-check form-check-inline'>
								<input type='radio' class='form-check-input' 
									value='\${notice.noticeId}' name='noticeId' id='noticeId'/>
								<label class='form-check-label' for='noticeId'>&nbsp; \${notice.noticeId}</label>
							</div>
						</th>
						<td>\${notice.noticeName}</td>
						<td>\${notice.regDate}</td>
					</tr>`
				);
			});
			
			$('#noticeList').append(noticeList.join(''));
		} else {
			$('#noticeList').append('<tr><td colspan=4 class=text-center>사원이 없습니다.</td></tr>');
		}
	});
}
function init(){
	refreshList();
//	$('#title').focus(function() {initField(this)});
//	$('#regDate').focus(function() {initField(this)});
	
	$('#listNoticeBtn').click(() => {
		$('#noticeList').empty();
	});
	
	$('#listNoticeBtn').click();
	
	$('#addNoticeBtn').click(() => {
		if(isVal($('#title')) && isVal($('#regDate'))) {
			let notice = {
				title: $('#title').val(),
				regDate: $('#regDate').val()
			};
			
			$.ajax({
				url: 'notice/add',
				method: 'post',
				data: notice
			}).done(cnt => {
				$('#listNoticeBtn').click();
			}).fail(err => alert('', false));
		}
	});
	
	$('#fixNoticeBtn').click(() => {
		if(isVal($('#noticeNum:checked')) && isVal($('#title')) && isVal($('#regDate'))) {
			$.ajax({
				url: 'notice/fix',
				method: 'put',
				data: JSON.stringify({
					noticeNum: $('#noticeNum:checked').val(),
					title: $('#title').val(),
					regDate: $('#regDate').val()
				}),
				contentType: 'application/json'
			}).done(cnt => {
				alert('' + cnt + '', cnt > 0);
				$('#listnoticeBtn').click();
			}).fail(err => alert('', false));
		}
	});
	
	$('#delNoticeBtn').click(() => {
		if(isVal($('#noticeNum:checked'))) {
			$('#delNoticeModal').modal();			
		}
	});
	
	$('#delNoticeOkBtn').click(() => {
		$.ajax({
			url: `notice/list/\${$('#noticeNum:checked').val()}`,
			method: 'delete'
		}).done(cnt => {
			$('#listNoticeBtn').click();
			$('#delNoticeModal').modal("hide");
		}).fail(err => alert(''), false);	
	});
	
	$('#noticeList').on({
		change() {
			let notice = $(this).parents('tr').find('td');
			
			$('#title').val(notice.eq(0).text());
			$('#regDate').val(notice.eq(1).text());
		}
	}, '#noticeNum');
}

$(init);
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
                     <a href='../user/01.html'><span>-회원목록</span></a><br> 
                     <a href='../user/03.html'><span>-자동메일</span></a><br>
                     <a href='../user/04.html'><span>-탈퇴회원목록</span></a><br>
                     <a href='../user/05.html'><span>-이용약관</span></a><br>
                     <a href='../order/01.html'><span>-주문조회</span></a>
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
                     <a href='../cloth/01.html'><span>-상품조회</span></a><br>
                     <a href='../cloth/02.html'><span>-상품등록</span></a><br>
                     <a href='../cloth/04.html'><span>-상품삭제</span></a>
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
                     <a href='../notice/01.html'>-공지사항</a><br>
                     <a href='../notice/04.html'><span>-FAQ</span></a><br>
                     <a href='../help/01.html'><span>-문의</span></a><br>
                     <a href='../review/01.html'><span>-리뷰</span></a>
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
                     <a href='../logo/01.html'><span>-로고</span></a><br>
                     <a href='../banner/01.html'><span>-배너</span></a><br>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- /include: gnb -->

		<div class='col-9'>
			<div class='row mt-3 justify-content-start'>
				<h5><b>| 공지 사항</b></h5>
			</div>
            <table class='table'>
               <thead class='text-center'>
                  <tr>
                  	<th>번호</th>
                  	<th>제목</th>
                  	<th>작성일</th>
                  </tr>
               </thead>
               <tbody class='text-center' id='noticeList'>
	                  <tr></tr>   
					</tbody>
				</table>
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
					<button type='button' class='btn btn-outline-secondary mr-1' onclick='location.href="./fix.jsp"'>수정</button>
					<button type='button' class='btn btn-outline-secondary mr-1' onclick='location.href="./add.jsp"'>작성</button>       			
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