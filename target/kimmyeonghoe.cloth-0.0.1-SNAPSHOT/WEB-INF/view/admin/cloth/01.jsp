<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html>
<head>
<title>THEJOEUN ShoppingMall</title>
<%@ include file="../../include/lib.jsp"%>
<script>
function isVal(field) { //jquery 객체를 변수로 사용
	let check = false;
	let fieldName;
	
	if(field.length)
		if(field.val()) check = true;
	return check;	
}

function listCloths() {
	$('#clothList').empty();
	$.ajax('admin/cloth/list') //utility method: 주어 객체 없이 호출하는 메소드
	.done(cloths => { //json으로 표기된 객체들의 배열(array)
		if(cloths.length) {
			let clothList = [];
			
			$.each(cloths, (idx, cloth) => { //$('객체').each는 jquery 객체
				clothList.unshift(
					`<tr>
						<th>
							<div class='form-check form-check-inline'>
								<input type='radio' class='form-check-input'
									value='\${cloth.clothNum}' name='clothNum' id='clothNum'/>
								<label class='form-check-label' for='clothNum'>&nbsp; \${cloth.clothNum}</label>
							</div>
						</th>
						<td>\${cloth.clothName}</td>
						<td>\${cloth.price}</td>
						<td>\${cloth.color}</td>
						<td>\${cloth.clothSize}</td>
						<td>\${cloth.quantity}</td>
					</tr>` //backtick을 이용한 template literal, jquery 함수와 구분하기 위해 \ 추가
				);
			});
			
			$('#clothList').append(clothList.join(''));
		} else {
			$('#clothList').append('<tr><td colspan=4 class=text-center>옷이 없습니다.</td></tr>');
		}
	});
}

function init() {
	listCloths();
	
	$('fixClothBtn').click(() => {
		if(isVal($('#clothNum:checked'))) {
			
		}
	});
	
	$('#delClothBtn').click(() => {
		if(isVal($('#clothNum:checked'))) {
			$('#delClothModal').modal();
		}
	});
	
	$('#delClothOkBtn').click(() => {
		$.ajax({
			url: `cloth/del/\${$('#clothNum:checked').val()}`,
			method: 'delete'
		}).done(cnt => {
			$('#listEmpBtn').click();
			
			$('#delClothModal').modal('hide');
			listCloths();
		})
	});
}

$(init);
</script>
<style>
</style>
</head>
<body>
	<div class='container'>
		<%@ include file="../../include/header.jsp"%>
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
								<a href='#'><span>-회원목록</span></a><br> <a
									href='#'><span>-자동메일</span></a><br> <a
									href='#'><span>-탈퇴회원목록</span></a><br> <a
									href='#'><span>-이용약관</span></a><br> <a
									href='#'><span>-주문조회</span></a>
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
								<a href='./02'><span>-상품등록</span></a><br>
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
								<a href='#'>-공지사항</a><br> <a
									href='#'><span>-FAQ</span></a><br> <a
									href='#'><span>-문의</span></a><br> <a
									href='#'><span>-리뷰</span></a>
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
								<a href='#'><span>-로고</span></a><br> <a
									href='#'><span>-배너</span></a><br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /include: gnb -->

			<div class='col-9'>
				<div class='row mt-3 justify-content-start'>
					<h5>
						<b>| 상품 조회</b>
					</h5>
				</div>
				<hr>
				<div class='row mt-3 justify-content-start'>
					<h6>
						<b>조회할 상품 검색</b>
					</h6>
				</div>
				<form>
					<div class='form-group row mt-3 justify-content-start'>
						<label for='productSearch' class='col-2 col-form-label'>검색어</label>
						<div class='col-5'>
							<input type="text" class="form-control" name="title"
								placeholder="상품명을 입력하세요." id='searchBar2' />
						</div>
					</div>
					<div class='form-group row mt-3 justify-content-start'>
						<label for='termSearch' class='col-2 col-form-label'>기간검색</label>
						<div class='col'>
							<select name='term'>
								<option value='none'>등록일</option>
								<option value='updateDate'>수정일</option>
							</select> <input type='date' name='startDate'> <span>~</span> <input
								type='date' name='endDate'>&nbsp;
						</div>

					</div>
					<div class='row justify-content-end'>
						<div class='col d-flex justify-content-center'>
							<button type='button' class='btn btn-outline-dark'
								id='searchOkBtn'>검색</button>
						</div>
					</div>
				</form>
				<hr>
				<div class='form-group row mt-3 justify-content-start'>
					<h6>
						<b>검색 상품 목록</b>
					</h6>
				</div>
				<div class='form-group row justify-content-center'>
					<div class='col'>
						
						<table class='table table-bordered'>
							<thead class='thead-light'>
								<tr>
									<th>상품코드</th>
									<th>상품명</th>
									<th>판매가</th>
									<th>색상</th>
									<th>사이즈</th>
									<th>재고</th>
								</tr>
							</thead>
							<tbody id='clothList'>
								<tr><td colspan='4' class='text-center'>등록된 옷이 없습니다.</td></tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class='row'>
					<div class='col d-flex justify-content-end'>
						<button type='button' class='btn btn-outline-secondary m-2' id='fixClothBtn'>수정</button>
						<button type='button' class='btn btn-outline-secondary m-2' id='delClothBtn'>삭제</button>
					</div>
				</div>	
				<div class='row'>
					<div class='col d-flex justify-content-center'>
						<p>
							<a href='#'>< 이전</a> <a href='#'>[1]</a> <a href='#'>다음 ></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id='delClothModal' class='modal fade' tabindex='-1'>
		<div class='modal-dialog'>
			<div class='modal-content'>
				<div class='modal-header'>
					<button type='button' class='close' data-dismiss='modal'>
						<span>&times;</span>
					</button>
				</div>
				<div class='modal-body'>
					<p>상품을 정말 삭제하시겠습니까?
					<p>
				</div>
				<div class='modal-footer'>
					<button type='button' class='btn btn-outline-dark btn-sm'
						id='delNoBtn' data-dismiss='modal'>아니오</button>
					<button type='button' class='btn btn-outline-dark btn-sm'
						id='delClothOkBtn'>예</button>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>