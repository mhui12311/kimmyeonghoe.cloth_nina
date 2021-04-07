<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>THEJOEUN ShoppingMall</title>

<%@ include file ="../include/lib.jsp"%>
<script>

</script>
<style>
.accordian{
	background-color:white;
}
#subMenu {
	min-width: 120px;
}
</style>

<div class='container contents-wrap'>
	<%@ include file ="../include/header.jsp"%>
 	<div class='row'>
		<div class='col-3'>
			<table class='table table-bordered'>
	            <thead class='thead-light text-center'>
	               <tr>
	                  <th colspan='3'>고객센터</th>
	               </tr>
	            </thead>
	            <tbody class='text-center'>
	               <tr>
	                  <td><a href = "../notice/01.html">공지사항</a></td>
	               </tr>
	               <tr>
	                  <td><a href = "../notice/03.html"><b>FAQ<br>(자주하는 질문)</b></a></td>
	               </tr>
	               <tr>
						<td><a href = "../help/01.html">상품 문의</a></td>
	               </tr>
	            </tbody>
	         </table>
		</div>
		
		<div class='col-9'>
			<div class='row'>
		     	<div class='col'>
		         <h5><b>| FAQ</b></h5>
		    	</div>
		    </div>
		    <div class='row' style='height:30px'></div>
		    <div class='row' style='height:300px'>
		    	<div class='col'>
					<div class="accordion" id="accordionExample">
						<a data-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample1">
						    	- 주문 후 배송지를 변경하고 싶어요. 
						</a><hr>
			 			<div class="collapse" id="collapseExample1">
						  <div class="card card-body">
						    고객센터 1588-1588를(을) 통해 배송지 변경이 가능합니다.
						  </div>
						</div>
					</div>
					<div class="accordion" id="accordionExample">
						<a data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample2">
						    	- 주문을 취소 하고싶어요. 
						</a><hr>
			 			<div class="collapse" id="collapseExample2">
						  <div class="card card-body">
						    구매취소는 상품이 배송되기 이전에만 가능합니다.
						  </div>
						</div>
					</div>
					<div class="accordion" id="accordionExample">
						<a data-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample3">
						    	- 배송 확인은 어디서 가능한가요?
						</a><hr>
			 			<div class="collapse" id="collapseExample3">
						  <div class="card card-body">
						    배송 확인은 마이페이지 구매내역에서 확인하실 수 있습니다.
						  </div>
						</div>
					</div>
				</div>
		    </div>	
		    	
		</div>
	</div>
	<div class='row'>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>