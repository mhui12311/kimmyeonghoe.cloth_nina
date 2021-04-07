<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<html>
	<!-- include: gnb -->
      <div id = "title">
         <div id = "nav">
            <div class='row'>
               <div class='col '>
                  <div class="gnb_lists">
                     <a href = "#"><span>티셔츠</span></a>
                     <span>&#124;</span>
                     <a href = "#"><span>셔츠</span></a>
                     <span>&#124;</span>
                     <a href = "#"><span>맨투맨</span></a>
                     <span>&#124;</span>
                     <a href = "#"><span>후디</span></a>
                     <span>&#124;</span>
                     <a href = "<%=request.getContextPath() %>/review/01"><span>리뷰</span></a>
                     <span>&#124;</span>
                     <a href = "<%=request.getContextPath() %>/notice/01"><span>고객센터</span></a>
                  </div>   
               </div>
            </div>    
                
            <div class='row justify-content-center'>
               <div class='col-2'></div>
               <div class='col'>
                  <input type = "text" class = "form-control" name = "title" placeholder = "검색어를 입력하세요." id='searchBar'/>
               </div>
               <div class='col-2'>
                  <button type = "button" class = "btn btn-secondary" onclick = "#">검색</button>
               </div>
            </div>
         </div>   
      </div>
   <!-- /include: gnb -->
</html>
