<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>MODIFY</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
   <!--    <!-- MATERIAL DESIGN ICONIC FONT -->
   <!--    <link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css"> -->

      <!-- STYLE CSS -->
      <link rel="stylesheet" href="../user_mypage/css/style.css">
      <link rel="stylesheet" href="../assets/css/main.css" />
      
   </head>
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gothic+A1&family=Gowun+Batang&family=Gowun+Dodum&display=swap" rel="stylesheet">
   <style>
   *{
   font-family: 'Black Han Sans', sans-serif;
font-family: 'Gothic A1', sans-serif;
font-family: 'Gowun Batang', serif;
font-family: 'Gowun Dodum', sans-serif;}
   </style>
   <body>
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<div class="bback">
      <div class="wrapper" style="background-image: url('../user_mypage/images/bb.jpg'); ">
         <div class="inner" style="width:1000px; background-color:rgba( 0, 0, 0, 0.0 );">
            <div class="image-holder">
               <!-- <img src="../user_mypage/images/registration-form-1.jpg" alt=""> -->
            </div>
            <form:form action="${root }user/modify_pro" method="post" modelAttribute="userModify">
               <form:hidden path="user_number"/> 
               <h3 style="color:white; font-size:22px;">MODIFY</h3>
               
               <div class="form-wrapper">
               <h6 style="color:white; font-size:19px;">ID</h6>
               <form:input path="user_id" readonly="true" class="form-control" style="color:white; background-color:#68686866; border:solid 1px #b9babb3b; font-size:18px; <%-- box-shadow:0px 1px; --%>"/>   
               </div>
               <div class="form-wrapper">
                  <h6 style="color:white; font-size:19px;">Name</h6>
               <form:input path="user_name" readonly="true" class="form-control" style="color:white; background-color:#68686866; border:solid 1px #b9babb3b; font-size:18px; <%-- box-shadow:0px 1px; --%>"/>
               </div>
               <div class="form-wrapper">
                  
                  <h6  style="font-size:20px; color:white;">ModifyPW</h6>
               <form:password path="user_pw" class="form-control" style="font-size:18px; color:white; border:solid 1px #e5e6e7; <%-- box-shadow:0px 1px; --%>"/>
               <form:errors path="user_pw" style='color:red'/>
               </div>
               <div class="form-wrapper">
                  
                  <h6 style="color:white; font-size:20px;">ModifyPW2</h6>
               <form:password path="user_pw2" class="form-control" style="font-size:18px; color:white;  border:solid 1px #e5e6e7; <%-- box-shadow:0px 1px; --%>"/>
               <form:errors path="user_pw2" style='color:red'/>
               </div>
               <div class="form-wrapper">
                  <h6  style="color:white; font-size:20px;">Tel</h6>
               <form:input path="user_tel"  class="form-control" style="font-size:18px; color:white; border:solid 1px #e5e6e7; <%-- box-shadow:0px 1px; --%>"/>
               </div>
               <div>
               <h6  style="color:white; font-size:20px; ">Address</h6>
               <form:input path="user_address"  id="sample6_postcode" class="form-control" style="font-size:18px; color:white; border:solid 1px #e5e6e7; <%-- box-shadow:0px 1px; --%>"/>
               <form:label path="user_address2"/>
               <form:input path="user_address2"  id="sample6_address" class="form-control" style="font-size:18px; color:white; border:solid 1px #e5e6e7; <%-- box-shadow:0px 1px; --%>"/>
               <form:label path="user_address3"/>
               <form:input path="user_address3"  id="sample6_detailAddress" class="form-control" style="font-size:18px; color:white; border:solid 1px #e5e6e7; <%-- box-shadow:0px 1px; --%>"/>
               <form:label path="user_address4"/>
               <form:input path="user_address4"  id="sample6_extraAddress" class="form-control" style="font-size:18px; color:white; border:solid 1px #e5e6e7; <%-- box-shadow:0px 1px; --%>"/>
         
            
            
               </div>
               <div class="form-wrapper">
                  <h6  style="color:white; font-size:20px;">Email</h6>
               <form:input path="user_email" class="form-control" style="font-size:18px; color:white; border:solid 1px #e5e6e7; <%-- box-shadow:0px 1px; --%>"/>
               </div>
            
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:button style="background-color:#871B01;">수정완료
                  <i class="zmdi zmdi-arrow-right"></i>
               </form:button>
            </form:form>
         </div>
      </div>
       <c:import url="/WEB-INF/views/include/bottom_info.jsp" />
   </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>