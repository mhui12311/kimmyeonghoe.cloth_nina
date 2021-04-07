<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>THEJOEUN ShoppingMall</title>

<%@ include file ="../include/lib.jsp"%>

<script>

</script>
<style>
#subMenu {
	min-width: 120px;
}
</style>
<div class='container contents-wrap'>
	<%@ include file="../include/header.jsp" %>
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
	                  <td><a href = "<%=request.getContextPath() %>/notice/01">공지사항</a></td>
	               </tr>
	               <tr>
	                  <td><a href = "<%=request.getContextPath() %>/notice/03">FAQ<br>(자주하는 질문)</a></td>
	               </tr>
	               <tr>
						<td><a href = "<%=request.getContextPath() %>/help/01"><b>상품 문의</b></a></td>
	               </tr>
	            </tbody>
	         </table>
		</div>

      <div class='col-9'>
		   <div class='row'>
		      <div class='col'>
		         <h5><b>| 상품 문의</b></h5>
		      </div>
		   </div>      
            <table class='table'>
               <thead class='text-center'>
                  <tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
               </thead>
               <tbody class='text-center'>
                  <tr><td>9</td><td><a href='./03.html'>세탁 문의</a></td><td>user</td><td>2020-05-05</td></tr>
                  <tr><td>8</td><td><a href='#'>배송 문의</a></td><td>mino98</td><td>2020-05-01</td></tr>
                  <tr><td>7</td><td><a href='#'>상품 교환 문의</a></td><td>juhyung2568</td><td>2020-04-15</td></tr>
                  <tr><td>6</td><td><a href='#'>사이즈 문의</a></td><td>jusung77</td><td>2020-04-02</td></tr>
                  <tr><td>5</td><td><a href='#'>세탁 문의</a></td><td>soyeon00</td><td>2020-03-15</td></tr>
               </tbody>
            </table>
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
         <a href='<%=request.getContextPath() %>/02'><button class='btn btn-secondary float-right'>글쓰기</button></a>
       </div>
   </div>
</div>	

<%@ include file="../include/footer.jsp" %>
	