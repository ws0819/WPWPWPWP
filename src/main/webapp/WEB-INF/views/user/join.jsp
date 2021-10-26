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
         alert('아이디를 입력해주세요')
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
   
   function resetUserIdExist() {
      $("#userIdExist").val('false')
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
          <p class="exTxt">회원가입시 휴대폰 본인인증이 필요합니다</p>
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
             
                <tr>
                  <th><span><form:label path="user_tel">전화번호</form:label></span></th>
                  <td><form:input path="user_tel" placeholder="전화번호를 입력하세요."/>
                   <a href="javascript:;" class="btn_confirm">인증번호 발송</a></td>
                </tr>
                
                <tr>
                  <th><span>인증번호 확인</span></th>
                  <td><input type="text" class="send_number" placeholder="10:00">
                    <a href="javascript:;" class="btn_confirm">인증번호 확인</a>
                  </td>
                </tr>
                
                <tr>
                  <th><span><form:label path="user_address">주소</form:label></span></th>
                  <td><form:input path="user_address" placeholder="주소를 입력하세요."/>
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
                <li><span class="red_txt">항목 : 성별, 생년월일</span></li>
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
    </div> <!-- container E -->
       



 <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</body>

   <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>


</html>