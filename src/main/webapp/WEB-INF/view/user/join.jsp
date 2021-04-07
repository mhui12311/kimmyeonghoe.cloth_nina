<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<title>THEJOEUN ShoppingMall</title>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>

<%@ include file ="../include/lib.jsp"%>
<script>
let checkedId = 0;
let checkedTerms = 0;


function validateId(id){
	var pattern = /[a-zA-Z]/; // 문자
	if(pattern.test(id) && id.length >=4){
		return true;
	} else{
		return false;
	}
}

function validatePw(str) {
	if(str.length >= 4 ) {
		$('#pw-danger').text("");
		$('#pw-success').text("사용가능한 비밀번호 입니다.");
	}
	else {
		$('#pw-success').text("");
		$('#pw-danger').text("비밀번호는 4자 이상 입력해야 합니다.");
	}
}


function fnCheckId(){
	
}

function validateEmail(email){
	filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	if(filter.test(email)){
		return true;
	} else {
		return false;
	}
}
function validateContact(number){
	var pattern = /[0-9]/; // 문자
	if(pattern.test(number)){
		if(number.length == 10 || number.length == 11){
			return true;
		} 
	}
	else {
		return false;
	}
}
function openZipSearch() {
	new daum.Postcode({
			oncomplete: function(data) {
				$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=addr1]').val(data.address);
				$('[name=addr2]').val(data.buildingName);
			}
		}).open();
}

function searchAddr(){
	daum.postcode.load(function(){
		new daum.Postcode({
			oncomplete:function(data){
				$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=addr1]').val(data.address);
				$('[name=addr2]').val(data.buildingName);
			}
		}).open();
	})
}

function changeView(address){
	window.location.href=address;
}



function showPopUp() { 
	window.open('terms.html','약관','scrollbars=yes width=650, height=700');
}

function init(){
	$("#userId").keyup(()=>{ 
		var idval=$("#userId").val(); 
		if(validateId(idval)){
			$('#id-danger').text("");
			$('#id-success').text("사용가능한 아이디 입니다.");
		}else{
			$('#id-success').text("");
			$('#id-danger').text("아이디는 4글자 이상이어야 합니다.");
		}
	});
 	
	$('#idChk').click(()=>{
		var userId = $('#userId').val();
		$.ajax({
			url:"${pageContext.request.contextPath}/user/idChk",
			data:{
				userId:userId
			}
		}).done(result => {
			if(result == userId){
				$('#bodyMsg').text('이미 존재하는 아이디 입니다.');
				$('#commonModal').modal();	
			} else {
				checkedId = 1;
				$('#bodyMsg').text('사용가능한 아이디 입니다.');
				$('#commonModal').modal();	
			}
		});
	});
	
	
	$("#userPw1").keyup(()=>{ 
		var pwd1=$("#userPw1").val(); 
		validatePw(pwd1);
	});
	$("#userPw2").keyup(()=>{
		var pwd1=$("#userPw1").val(); 
		var pwd2=$("#userPw2").val(); 
		if(pwd1 != "" || pwd2 != ""){ 
			if(pwd1 == pwd2){ 
				$('#pw2-danger').text("");
				$('#pw2-success').text("비밀번호가 일치합니다.")
			}else{ 
				$('#pw2-danger').text("비밀번호가 일치하지 않습니다.")
				$('#pw2-success').text("");
				} 
		} 
	});
	
	$("#email").keyup(()=>{ 
		var email=$("#email").val(); 
		if(validateEmail(email)){
			$('#email-danger').text("");
			$('#email-success').text("사용가능한 이메일 입니다.");
		}else{
			$('#email-success').text("");
			$('#email-danger').text("이메일 형식을 입력해주세요.");
		}
	});
	
	$("#contact").keyup(()=>{ 
		var contact=$("#contact").val(); 
		if(validateContact(contact)){
			$('#contact-danger').text("");
			$('#contact-success').text("사용가능한 연락처 입니다.");
		}else{
			$('#contact-success').text("");
			$('#contact-danger').text("전화번호는 10~11자리를 숫자만 입력해주세요.");
		}
	});
	
	$('span.req').text('*');
	
	$('#okBtn').click(()=>{
		$('#commonModal').modal('hide');
	})
	
	$('#searchAddr').click(()=>{
		searchAddr();
	})
	
	$('#terms').click(()=>{
		$('#terms').checked;
		checkedTerms = 1;
		$('#terms-danger').text("");
		$('#terms-success').text("약관에 동의하셨습니다.");
	})
	
	$('#done').click(()=>{
		if($('#userName').val()) {
			if($('#userId').val()){
				if($('#userPw1').val()){
					if($('#userPw2').val()){
						if($('#birthday').val()){
							if($('#email').val()){
								if($('#contact').val()){
										if($('#terms:checked').val()){
											if(checkedId==1){
												let user = {
														userId: $('#userId').val(),
														userPw: $('#userPw2').val(),
														userName: $('#userName').val(),
														birthday: $('#birthday').val(),
														contact: $('#contact').val(),
														email: $('#email').val(),
														postcode: $('#postCode').val(),
														address: $('#address1').val(),
														addressDetail: $('#address2').val(),
														joinDate:'',
														withdrawalDate:''
													};
												$.ajax({
													type:'post',
													url:"${pageContext.request.contextPath}/user/join",
													data: JSON.stringify(user),
													contentType: 'application/json',
												}).done(function(data){
													//[임시] 가입 완료 시 로그인페이지로 이동한다.
													//이메일 인증기능 구현 후 이메일 인증 페이지로 이동하도록 수정해야 한다.
													location.href="${pageContext.request.contextPath}/user/login";
												});
											} else{
												$('#bodyMsg').text('아이디 중복확인을 해주세요.');
												$('#commonModal').modal();	
											}
										} else alert('약관에 동의해야 합니다.');
								} else $('#contact').focus();
							} else $('#email').focus();
						} else $('#birthday').focus();
					} else $('#userPw2').focus();
				} else $('#userPw1').focus();
			} else $('#userId').focus();
		} else $('#userName').focus();
	});
}
$(init);
</script>
<style>
.container{
}
label{
	margin-left:5px;
	min-width:100px;
}
th{
	min-width:120px;
	background-color:lightgray;
}

</style>

<div class='container'>
	<%@ include file ="../include/header.jsp"%>
		<div class='row'>
			<h4>회원가입</h4>
		</div>
		<hr>
		<p class='joinNav d-flex justify-content-center'><span class='joinProcess'><strong>정보입력</strong></span>><span class='joinProcess'>이메일 인증</span>><span class='joinProcess'>가입 완료</span></p>
		<p class="reqInfor d-flex justify-content-end"><span class="req"><span>*</span></span> 표시  항목은 필수 입력 항목입니다.</p>
		<div></div>
		<div class='row'>
			<f:form modelAttribute='user' id='joinForm' method='post'>
			</f:form>
			<div class='col-3'></div>
			<div class='col'>
				<table class="inputLayer">
					<tr>
						<th class='border-bottom' scope="row" class="joinHeadWidth"><label for="userName">이름<span class="req"></span></label></th>
						<td>
							<input type="text" id="userName" name="userName" class="userName" value='김명회'/>
						</td>
					</tr>
					<tr>
						<th class='border-bottom' scope="row"><label for="id"> 아이디<span class="req"></span></label></th>
						<td>
							<input type="text" id="userId" title="아이디" name="userId" class="userId" value='test'/><input type="button"  value="중복확인" class="btn btn-idChk" id="idChk" style="border:0.1em solid lightgray; margin-left:5px;"/>
							<span class="text-success" id="id-success"></span>
							<span style="color:#a94442;" class="text-danger" id="id-danger"></span>
						</td>
					</tr>
					<tr>
						<th class='border-bottom' scope="row"><label for="password1" > 비밀번호<span class="req"></span></label></th>
						<td>
							<input type="password" name="password" id="userPw1"  class="userPassword" value='1234'/>
							<span class="text-success" id="pw-success"></span>
							<span style="color:#a94442;" class="text-danger" id="pw-danger"></span>
						</td>
					</tr>
					<tr>
						<th class='border-bottom' scope="row"><label for="password2" style="width:auto;"> 비밀번호 확인<span class="req"></span></label></th>
							<td>
								<input type="password" name="password2" id="userPw2" class="userPassword" value='1234' />
								<span class="text-success" id="pw2-success"></span>
								<span style="color:#a94442;" class="text-danger" id="pw2-danger"></span>
							</td>
					</tr>
					<tr>
						<th class='border-bottom' scope="row"><label for="birthday"> 생년월일<span class="req"></span></label></th>
							<td>
							<input type="date" name="birthday" id="birthday" class="birthday" value='2000-01-01'>
							</td>
						</tr>
						<tr>
							<th class='border-bottom' scope="row"><label> 이메일<span class="req"></span></label></th>
						<td>
							<input name="email" id="email" type="text" title="이메일 아이디"  class="emailId" value='a@naver.com'/>
							<span class="text-success" id="email-success"></span>
							<span style="color:#a94442;" class="text-danger" id="email-danger"></span>
						</td>
					</tr>
					<tr>
						<th class='border-bottom' scope="row"><label> 연락처<span class="req"></span></label></th>
						<td>
							<dl class="telgroup">
								<dd>
									<input type="text" id="contact" name="contact"  class="input_txt tel" title=" 전화번호" maxlength="11" value='01095763829'/>
									<span class="text-success" id="contact-success"></span>
									<span style="color:#a94442;" class="text-danger" id="contact-danger"></span>
								</dd>
							</dl>
						</td>
					</tr>
					<tr>
						<th class='border-bottom' scope="row"><label for="post"> 우편번호<span></span></label></th>
							<td>
								<input type="text" name="zip"  id='postCode' style="width:80px; height:26px;" />
								<button type='button' class='btn btn-outline-secondary btn-sm' id='searchAddr'>주소검색</button>
							</td>
						</tr>
						<tr>
							<th class='border-bottom' scope="row"><label for="address"> 주소</label></th>
						<td>
							<input type="text" name="addr1" id='address1' style="width:300px; height:30px;" readonly />
							<input type="text" name="addr2" id='address2'style="width:300px; height:30px;" />
						</td>
					</tr>
				</table>
			</div>
			
		</div>
		<div class='row d-flex justify-content-start'>
			<div class='col-3'></div>
			<div class='col'>
							<input type="checkbox" class='ml-3 mt-2' id="terms" name="terms" title="약관"/>
					<span>약관에 동의합니다</span>
					<input type='button' onclick="showPopUp()" value='약관보기'> <span> </span><span class="text-success" id="terms-success" title="약관체크여부"></span><span style="color:#a94442;" class="terms-danger" id="terms-danger"></span>
			</div>
			
		</div>
		<div class='row d-flex justify-content-center'>
				<button type="button" class="btn btn-outline-secondary m-5" style="width:120px; height:50px;" id="cancel">취소</button>
				<button type="button" class="btn btn-outline-secondary m-5" style="width:120px; height:50px;" id="done">확인</button>
		</div>
	</div>
	<div id='commonModal' class='modal fade' tabindex='-1'>
		<div class='modal-dialog'>
			<div class='modal-content'>
				<div class='modal-header'>
					<h5 class='modal-title'>아이디 중복확인</h5>
					<button type='button' class='close' data-dismiss='modal'>
						<span>&times;</span>
					</button>
				</div>
				<div class='modal-body'>
					<p id='bodyMsg'></p>
				</div>
				<div class='modal-footer'>
					
					<button type='button' class='btn btn-outline-secondary' id='okBtn'>확인</button>
				</div>
			</div>
		</div>
	</div>
	<%@ include file ="../include/footer.jsp"%>
