<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>THEJOEUN ShoppingMall</title>

<%@ include file ="../include/lib.jsp"%>

<script>
function init(){
	
	$('#title').focus(function() {initField(this)});
	$('#regDate').foucs(function() {initField(this)});
	
	$('#listNoticeBtn').click(()=> {
		$('#noticeList').empty();
		
		$.ajax('notice/list')
		.done(notices => {
			if(notices.length) {
				let noticeList = [];
				
				$.each(notices, (idx, notice) => {
					noticeList.unshift()
					
					
					
					
				})
			}
		})
		
	})
	
	$('#delNoticeBtn').click(() => {
		if(isVal($('#noticeNum:checked'))) {
			$('#delNoticeModal').modal();			
		}
	});
	
	$('#delNoticeOkBtn').click(() => {
		$.ajax({
			url: `notice/del/\${$('#noticeNum:checked').val()}`,
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
			$('#content').val(notice.eq(1).text());
			$('#regDate').val(notice.eq(2).text());
		}
	}, '#noticeNum');
}

$(init);
</script>	
<style>
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
                  <td><a href = "<%=request.getContextPath() %>/notice/01"><b>공지사항</b></a></td>
               </tr>
               <tr>
                  <td><a href = "<%=request.getContextPath() %>/notice/03">FAQ<br>(자주하는 질문)</a></td>
               </tr>
               <tr>
					<td><a href = "<%=request.getContextPath() %>/help/01">상품 문의</a></td>
               </tr>
            </tbody>
         </table>
      </div>
		 
		<div class='col-9'>
			<div class='row'>
		      <div class='col'>
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
	                  <tr><td colspan='4' class='text-center'>등록된 게시글이 없습니다.</td></tr>                        
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
			</div>
		</div>
	</div>
</div>

<%@ include file='../include/footer.jsp' %>
</body>
</html>
