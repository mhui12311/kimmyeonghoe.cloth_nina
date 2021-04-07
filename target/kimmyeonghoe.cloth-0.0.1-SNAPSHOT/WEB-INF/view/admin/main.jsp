<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<html>
<head>
<title>THEJOEUN ShoppingMall</title>
<%@ include file ="../include/lib.jsp"%>
<style>
</style>
</head>
<body>
	<div class='container'>
	<header>
		<div class='row'>
			<div class='col'>
				<div id="logoTop">
					<a href="../main.html" id='logoText'>로고 이미지</a>
				</div>
			</div>
			<div class='col-8'>
				<div id="nav">
					<div id="rightBar">
						<a href="#">사용자 페이지 이동</a> <span>|</span> <a
							href="<%=request.getContextPath() %>/user/logout"><span>ADMIN LOGOUT</span></a> <span>|</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<hr>
	<!-- /include: header -->

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
							<a href='./cloth/01.html'><span>-상품조회</span></a><br> 
							<a href='./cloth/02.html'><span>-상품등록</span></a><br> 
							<a href='./cloth/04.html'><span>-상품삭제</span></a>
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
							<a href='./notice/01.html'><span>-공지사항</span></a><br> 
							<a href='./notice/04.html'><span>-FAQ</span></a><br> 
							<a href='./help/01.html'><span>-문의</span></a><br>
							<a href='./review/01.html'><span>-리뷰</span></a>
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
							<a href='./logo/'><span>-로고</span></a><br> 
							<a href='./banner/'><span>-배너</span></a><br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /include: gnb -->

		<div class='col-9'> 
					<div class='row' >
						<div class='col' id="adminOrder">
							<h5>주문 현황</h5>
							<table class='table table-bordered mt-3 text-center'>
								<thead class='thead-light'>
									<tr>
										<th>결제 완료</th>
										<th>상품 준비중</th>
										<th>배송중</th>
										<th>배송완료</th>
									</tr>
								</thead>
								<tbody id='OrderStatus' class='table-bordered'>
									<tr>
										<td>10</td>
										<td>5</td>
										<td>3</td>
										<td>8</td>
									</tr>
								</tbody>
							</table>
						</div>
						
					</div>
					<div class='row justify-content-center' style='height:400px'>
							<div class='col mt-5' id="adminBorder">
								<h5>게시판 현황</h5>
								<table class='table table-hover table-bordered mt-3 text-center'>
									<thead class='thead-light'>
										<tr>
											<th>상품 후기</th>
											<th>상품 문의</th>
											<th>1:1문의</th>
										</tr>
									</thead>
									<tbody id='borderStatus' class='table-bordered'>
										<tr>
											<td>50</td>
											<td>15</td>
											<td>3</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
		</div>
	</div>
</div>
	
</div>
<!-- include: footer -->
	<%@ include file ="../include/footer.jsp"%>
<!-- /include: footer -->
</body>
</html>

