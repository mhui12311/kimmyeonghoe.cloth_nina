<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<title>THEJOEUN ShoppingMall</title>
<%@ include file ="../../include/lib.jsp"%>

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
				<h5><b>| 공지 사항 작성</b></h5>
			</div>		
			<form>
	            <table class='table'>
	               <tbody>
	                  <tr>
	                  	<td class='text-center'><b>제목</b></td>
	                  	<td id='title'>택배 회사 파업으로 인한 배송 지연 안내</td>
	                  </tr>
	                  <tr>
	                  	<td class='text-center'><b>등록일</b></td>
	                  	<td id='regDate'>2021-03-22</td>
	                  </tr>
	                  <tr>
	                 	 <td class='text-center'><b>내용</b></td>
	                 	 <td id='content'>
	                 	 	<textarea cols=60  rows= 10>안녕하세요 ^^~더조은 샵 입니다.모든 택배 회사 파업으로 배송 지연 안내를 드립니다.배송 시작 날짜는 정확하지 않으며, 파업이 끝나면 바로 배송 시작하겠습니다. 감사합니다.
	                 	 	</textarea>
	                 	 </td>
	                 </tr>
	               </tbody>
	            </table>
	       		<nav>
	       			<a href='01.html'><button type='button' class='btn btn-outline-secondary float-right ml-1' >저장</button></a>	       		
	       			<a href='01.html'><button type='button' class='btn btn-outline-secondary float-right' >취소</button></a>
	       		</nav>
    	  	</form>
		</div>      			
	</div>
</div>

	<%@ include file ="../../include/footer.jsp"%>
