<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>THEJOEUN ShoppingMall</title>

<%@ include file ="../include/lib.jsp"%>
<script>

</script>

<div class='container'>
	<%@ include file ="../include/header.jsp"%>	
	  <div class='row' style='height:500px'>
		<div class='col-3'>
			<table class='table table-bordered'>
            <thead class='thead-light text-center'>
               <tr>
                  <th colspan='3'>고객센터</th>
               </tr>
            </thead>
            <tbody class='text-center'>
               <tr>
                  <td><a href = "../notice/01.html"><b>공지사항</b></a></td>
               </tr>
               <tr>
                  <td><a href = "../notice/03.html">FAQ<br>(자주하는 질문)</a></td>
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
		         <h5><b>| 공지 사항</b></h5>
		    	</div>
		    </div>
		    <div class='row' style='height:30px'></div>
		    <div class='row'>
		    	<div class='col'>
		            <table class='table table-border'>
		               <thead class='text-center'>
		                  <tr><th>카드사</th><th>할부 개월수</th></tr>
		               </thead>
		               <tbody class='text-center'>
		                  <tr><td class='body'>삼성카드</td><td>최대 24개월 무이자</td></tr>
		                  <tr><td class='body'>국민카드</td><td>최대 12개월 무이자</td></tr>
		                  <tr><td class='body'>신한카드</td><td>2 ~ 6개월 무이자</td></tr>
		                  <tr><td class='body'>현대카드</td><td>2 ~ 8개월 무이자</td></tr>
		                  <tr><td class='body'>농협카드</td><td>2 ~ 4개월 무이자</td></tr>                     
							</tbody>
					</table>					    	
		   		 </div>
		    </div>
		    <div class='row'>
		    	<div class='col-8'></div>
		    	<div class='col  d-flex justify-content-end'>
		    		<div class='row'>
		    			<div class='col'>
		    				<button type='button' class='btn btn-outline-secondary' onclick='location.href="./list.html"'>목록</button>
		    			</div>
		    			<div class='col'>
		    				<button type='button' class='btn btn-outline-secondary'>이전</button>
		    			</div>
			    		<div class='col'>
			    			<button type='button' class='btn btn-outline-secondary'>다음</button>
			    		</div>
		    		</div>
		    	</div>
		    </div>
		</div>
	</div>
</div>

<%@ include file='../include/footer.jsp' %>