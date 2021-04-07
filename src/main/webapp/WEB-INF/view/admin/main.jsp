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
	<div class='container contents-wrap'>
<!-- include: header -->
	<%@ include file ="../include/header.jsp"%>
<!-- /include: header -->

	<div class='row justify-content-center'>
		<div class='col'id = "adminOrder">
			<h4>주문 현황</h4>
			<table class='table table-hover table-bordered mt-3'>
				<thead class='thead-light'>
					<tr>
						<th class='text-center'>결제 완료</th>
						<th class='text-center'>상품 준비중</th>
						<th class='text-center'>배송중</th>
						<th class='text-center'>배송완료</th>
					</tr>
				</thead>
				<tbody id='OrderStatus' class='table-bordered'>
					<tr>
					<td colspan='1' class='text-center'>10</td>
					<td colspan='1' class='text-center'>5</td>
					<td colspan='1' class='text-center'>3</td>
					<td colspan='1' class='text-center'>8</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<div class='row justify-content-center'>
		<div class='col mt-5'id = "adminBorder">
			<h4>게시판 현황</h4>
			<table class='table table-hover table-bordered mt-3'>
				<thead class='thead-light'>
					<tr>
						<th class='text-center'>상품 후기</th>
						<th class='text-center'>상품 문의</th>
						<th class='text-center'>1:1문의</th>
					</tr>
				</thead>
				<tbody id='borderStatus' class='table-bordered'>
					<tr>
					<td class='text-center'>50</td>
					<td class='text-center'>15</td>
					<td class='text-center'>3</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
</div>
<!-- include: footer -->
	<%@ include file ="../include/footer.jsp"%>
<!-- /include: footer -->
</body>
</html>

