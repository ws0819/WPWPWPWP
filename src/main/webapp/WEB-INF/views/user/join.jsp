<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="#">
  <meta charset="UTF-8">
  
  <link rel="stylesheet" href="../assets/css/main.css" />
  <link rel="stylesheet" href="../user_boot/css/join.css" />
  <title>회원가입</title>
</head>

<script type="text/javascript">
   function checkUserIdExist() { 
      //변수선언 : 사용자가 입력한 아이디
      var user_id=$("#user_id").val()
      if(user_id.length==0) {
         alert('아이디를 입력하세요')
         return 
      }
   $.ajax({
      url:'${root}user/checkUserIdExist/' + user_id,
      type: 'get',
      dataType:'text', 
     
      
      success: function (result) {
         if(result.trim()=='true') {
            alert('사용가능한 아이디입니다')
            $("#userIdExist").val('true')
         }else {alert('이미 사용중인 아이디입니다')
            $("#userIdExist").val('false')
         }
      }
   })
   }
 </script>

<body>
   <c:import url="/WEB-INF/views/include/top_menu.jsp" />
  <div class="wrap wd668">
      <div class="container">
        <form:form action="${root }user/join_pro" method="post" modelAttribute="joinUserBean">
        <form:hidden path="userIdExist"/>
       <div class="form_txtInput">
      

       
          <h2 class="sub_tit_txt">WINE EASY 회원가입</h2>
          <p class="exTxt" style="color:red">회원가입시 휴대폰 인증이 필요합니다</p>
          <div class="join_form">
            <table>
              <colgroup>
                <col width="30%"/>
                <col width="auto"/>
              </colgroup>
              
              
              <tbody>
                <tr>
                  <th><span><form:label path="user_id">아이디</form:label></span></th>
                  <td><form:input path="user_id" onkeypress="resetUserIdExist()"/>
                    <a href="javascript:void(0)"  class="btn_confirm" onclick="checkUserIdExist(); return false;">중복확인</a>  
                    <form:errors path="user_id" style='color:red'/>                      
                  </td>
                </tr>
                
                <tr>
                  <th><span><form:label path="user_name">이름</form:label></span></th>
                  <td><form:input path="user_name" placeholder="이름을 입력하세요."/>
                        <form:errors path="user_name" style='color:red'/></td>
                </tr>
              
                <tr>
                  <th><span><form:label path="user_pw">비밀번호</form:label></span></th>
                  <td><form:password path="user_pw" placeholder="비밀번호를 입력하세요."/>
                        <form:errors path="user_pw" style='color:red'/></td>
                </tr>
              
                <tr>
                  <th><span><form:label path="user_pw2">비밀번호 확인</form:label></span></th>
                  <td><form:password path="user_pw2" placeholder="비밀번호를 입력하세요."/>
                        <form:errors path="user_pw2" style='color:red'/></td>
                </tr>
              
                <tr class="email">
                  <th><span><form:label path="user_email">이메일</form:label></span></th>
                  <td>
                    <form:input path="user_email" placeholder="이메일을 입력하세요."/>
                  </td>
                </tr>
                
<%--                    <tr>
                  <th><span><form:label path="user_tel">전화번호</form:label></span></th>
                    <td><form:input path="user_tel"/>
                  <div>
                     <a href="javascript:void(0)"  class="btn_confirm" onclick="sendSms(); return false;">가자</a>  
                  </div>
                  </td>
                </tr> --%>
                
              <tr>
                  <th><span><form:label path="user_tel">전화번호</form:label></span></th>
                  <td><form:input path="user_tel" id="inputPhoneNumber" name="inputPhoneNumber"/>
                     <input type="button" id="sendPhoneNumber" value="인증번호 전송"/><br />
                    <!--  <a href="javascript:void(0)" class="btn_confirm" onclick="plz(); return false;">인증번호 전송</a>      -->            
                  </td>
                </tr>
                
                 <tr>
                  <th><span>인증번호 확인</span></th>
                  <td><input type="text" id="inputCertifiedNumber" placeholder="인증번호를 입력하세요">
                      <input type="button" id="checkBtn" value="인증번호확인">
                      <!-- <a href="javascript:void(0)" class="btn_confirm" onclick="plz2(); return false;">인증번호 확인</a> -->
                     
                  </td>
                </tr>
            <input type="hidden" name="text" id="text"/>
                
                <tr>
                  <th><span><form:label path="user_address">주소</form:label></span></th>
                  <td><form:input path="user_address" id="sample6_postcode" placeholder="우편번호"/>
                  <form:label path="user_address2"/>
             <form:input path="user_address2" id="sample6_address" style="top: 5px;" placeholder="도로명 주소" readonly="readonly" />   
             <form:label path="user_address3"/>
             <form:input path="user_address3" id="sample6_extraAddress" placeholder="주소"  />
             <form:label path="user_address4"/>
             <form:input path="user_address4" id="sample6_detailAddress" placeholder="상세주소"  />


<!-- <input type="text" id="sample6_address" placeholder="주소1"><br>
<input type="text" id="sample6_detailAddress" placeholder="상세주소1">
<input type="text" id="sample6_extraAddress" placeholder="참고항목1">
      -->               

                  <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
              
                  </td>
                </tr>
               </tbody>
            </table>
           <!--  <div class="exform_txt"><span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span></div>-->
         </div>
         
          <div class="agree_wrap">
            <div class="checkbox_wrap mar27">
              <input type="checkbox" id="marketing" name="marketing" class="agree_chk">
              <label for="marketing">[선택]마케팅 목적 개인정보 수집 및 이용에 대한 동의</label>
              <ul class="explan_txt">
                <li><span class="red_txt">중요</span></li>
                <li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br/>
                  대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br/>
                  다만 이때 회원 대상 서비스가 제한될 수 있습니다.
                </li>
              </ul>
            </div>
          </div>
        <form:button class="btn_register" >회원가입</form:button> 
         
          
        </div> <!-- form_txtInput E -->
       </form:form>
       
       
      </div><!-- content E-->
    
   <c:import url="/WEB-INF/views/include/bottom_info.jsp" />
    </div> 
       



 <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</body>
 <script>
 $('#sendPhoneNumber').click(function(){
       var phoneNumber = $('#inputPhoneNumber').val();
       alert('인증번호 발송 완료!')


       $.ajax({
           /* type: "GET", */
           url: "sendSms.do",
           data: {
               "phoneNumber" : phoneNumber
           },
           success: function(res){
              $('#checkBtn').click(function(){
                   if($.trim(res) ==$('#inputCertifiedNumber').val()){
                       alert(
                           
                           '휴대폰 인증이 정상적으로 완료되었습니다.',
                          
                       )

                       $.ajax({
                           type: "GET",
                           url: "${root}user/join",
                           data: {
                               "phoneNumber" : $('#inputPhoneNumber').val()
                           }
                       })
                       /* document.location.href="/home"; */
                   }else{
                       alert(
                           '인증번호가 다릅니다 확인해주세요'
                           /* footer: '<a href="/home">다음에 인증하기</a>' */
                       )
                   }
               })


           }
       })
   });

</script>

<!-- 다음 주소 -->
<!-- 팝업으로 띄우는 경우 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

   <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>


</html>