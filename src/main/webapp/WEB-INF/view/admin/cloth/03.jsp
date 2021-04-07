<%@ page language='java' contentType='text/html; charset=utf-8'	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html>
<head>
<title>THEJOEUN ShoppingMall</title>
<%@ include file="../../include/lib.jsp"%>
<script>
</script>
<style>
</style>
</head>
<body>
	<div class='container'>
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
								<a href='./01'><span>-상품조회</span></a><br> 
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
						<b>| 상품 등록</b>
					</h5>
				</div>
				<hr>
				<div class='row mt-3 justify-content-start'>
					<h6>
						<b>카테고리 선택</b>
					</h6>
					&nbsp;
					<p id='font'>※필수선택</p>
				</div>
				<hr>
				<div class='form-group row mt-3'>
					<label for='kind' class='col-2 col-form-label'>카테고리</label> 
					<select	name='kind' class='col-4' id='kind'>
						<option value=''>카테고리 선택</option>
						<option value='tShirt'>티셔츠</option>
						<option value='shirt'>셔츠</option>
						<option value='mtm'>맨투맨</option>
						<option value='hood'>후드</option>
					</select>
				</div>
				<hr>
				<div class='row mt-3 justify-content-start'>
					<h6>
						<b>노출 및 판매상태 설정</b>
					</h6>
					&nbsp;
					<p id='font'>※각 항목별 한가지 이상 선택</p>
				</div>
				<div class='form-group row mt-3'>
					<label for='showCloth' class='col-4 col-form-label'>쇼핑몰 노출상태</label>
					<div class='form-check form-check-inline'>
						<input type='radio' class='form-check-input' id='displayState' name='displayState' value='yes' checked /> 
						<label class='form-check-label' for='showCheck'>노출함</label>
					</div>
					<div class='form-check form-check-inline'>
						<input type='radio' class='form-check-input' id='displayState' name='displayState' value='no'/>
						<label class='form-check-label' for='unShowCheck'>노출안함</label>
					</div>
				</div>
				<div class='form-group row mt-3'>
					<label for='display' class='col-4 col-form-label'>옷 등급</label>
					<div class='form-check form-check-inline'>
						<input type='radio' class='form-check-input' id='clothLevel' name='clothLevel' value='new' checked /> 
						<label class='form-check-label' for='newProduct'>신상품</label>
					</div>
					<div class='form-check form-check-inline'>
						<input type='radio' class='form-check-input' id='clothLevel' name='clothLevel' value='hot' /> 
						<label class='form-check-label'	for='popularProduct'>인기상품</label>
					</div>
					<div class='form-check form-check-inline'>
						<input type='radio' class='form-check-input' id='clothLevel' name='clothLevel' value='normal'/> 
						<label class='form-check-label'	for='popularProduct'>일반상품</label>
					</div>
				</div>
				<hr>
				<div class='row mt-3 justify-content-start'>
					<h6>
						<b>상품 기본 사항</b>
					</h6>
					&nbsp;
					<p id='font'>※필수입력</p>
				</div>
				<div class='form-group row mt-3'>
					<label for='productName' class='col-3 col-form-label'>상품명</label>
					<div class='col'>
						<input type='text' class='form-control' name='clothName' id='clothName'>
					</div>
				</div>
				<div class='form-group row mt-3'>
					<label for='productColor' class='col-3 col-form-label'>색상</label>
					<div class='col'>
						<input type='text' class='form-control' name='color' id='color'>
					</div>
				</div>
				<div class='form-group row mt-3'>
					<label for='productImg' class='col-3 col-form-label'>상품 이미지</label>
					<div class='col-4'>
						<input type='text' class='form-control' name='imageName' id='imageName' />
					</div>
				</div>
				<div class='form-group row mt-3'>
					<label for='productInfo' class='col-3 col-form-label'>상품 가격</label>
					<div class='col'>
						<div class='row'>
							<div class='col-5'>
								<input type='number' class='form-control' id='price' name='price' />
							</div>
							<div class='col'>원</div>
						</div>

					</div>
				</div>
				<div class='form-group row mt-3'>
					<label for='clothSize' class='col-3 col-form-label'>사이즈</label>
					<div class='col'>
						<select name='clothSize' class='form-control' id='clothSize'>
							<option value='S'>S</option>
							<option value='M'>M</option>
							<option value='L'>L</option>
							<option value='XL'>XL</option>
						</select>
					</div>
				</div>
				<div class='form-group row mt-3'>
					<label for='content' class='col-3 col-form-label'>상품 설명</label>
					<div class='col'>
						<textarea class='form-control' rows='2' name='content' id='content'></textarea>
					</div>
				</div>
				<div class='form-group row mt-3'>
					<label for='quantity' class='col-3 col-form-label'>수량</label>
					<div class='col'>
						<input class='form-control' type='number' name='quantity' id='quantity'/>
					</div>
				</div>
				<hr>
				<div class='row mt-3 justify-content-start'>
					<h6>
						<b>이용 안내</b>
					</h6>
					&nbsp;
					<p id='font'>※안내사항 선택입력</p>
				</div>
				<div class='form-group row mt-3'>
					<label for='productInfo' class='col-3 col-form-label'>배송안내</label>
					<div class='col' id='deliveryInfo'>
						<textarea class='form-control' rows='5'></textarea>
					</div>
				</div>
				<div class='form-group row mt-3'>
					<label for='productInfo' class='col-3 col-form-label'>교환&환불
						안내</label>
					<div class='col' id='deliveryInfo'>
						<textarea class='form-control' rows='5'></textarea>
					</div>
				</div>
				<div class='row justify-content-end'>
					<div class='col d-flex justify-content-end'>
						<button type='button' class='btn btn-outline-dark btn-sm'
							id='cancelBtn' data-toggle='modal' data-target='#cancelModal'>취소</button>
						&nbsp;
						<button type='button' class='btn btn-outline-dark' id='addClothBtn'>등록</button>
					</div>
				</div>
			</div>
		</div>
	</div>
			
	</div>
	<%@ include file ="../../include/footer.jsp"%>
</body>
</html>