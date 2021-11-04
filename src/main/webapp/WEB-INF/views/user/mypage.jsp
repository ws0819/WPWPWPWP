<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>My Page</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
    <!--   <!-- MATERIAL DESIGN ICONIC FONT -->
     <!--  <link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css"> -->

      <!-- STYLE CSS -->
      <link rel="stylesheet" href="../user_mypage/css/style.css">
<!--       <link rel="stylesheet" href="../assets/css/main.css" /> -->
      
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
      <div class="wrapper" style="background-image: url('../user_mypage/images/bbb.jpg');">
         <div class="inner" style="width:1000px; background-color:rgba( 0, 0, 0, 0.0 );">
            <div class="image-holder">
              <!--  <img src="../user_mypage/images/das.jpg" alt=""> -->
            </div>
            <form:form action="${root }user/modify" method="get" modelAttribute="userMyPage">
               <form:hidden path="user_number"/>
               <h3 style="color:white; font-size:22px;">My Info</h3>
               <div class="form-wrapper">
               <h6 style="color:white; font-size:19px;">ID</h6>
               <form:input path="user_id" readonly="true" class="form-control" style="color:white; font-size:18px;  border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
                  
               </div>
               <div class="form-wrapper">
                  <h6 style="color:white; font-size:19px;">Name</h6>
               <form:input path="user_name" readonly="true" class="form-control" style="color:white; font-size:18px;  border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
               </div>
               <div class="form-wrapper">
                  <h6 style="color:white; font-size:19px;">Tel</h6>
               <form:input path="user_tel" readonly="true" class="form-control" style="color:white; font-size:18px; border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
               </div>
            <div class="form-wrapper">
                  <h6 style="color:white; font-size:19px;">Address</h6>   
               <%-- <form:input path="user_address" readonly="true" class="form-control " style="width:550px"/><br/> --%>
<!--                <h6 style="color:white; font-size: 13px;">Postcode</h6>   
 -->               <form:input path="user_address" id="sample6_postcode" readonly="true" class="form-control" style="color:white; font-size:18px; border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
<!--               <h6 style="color:white; font-size: 13px;">roadAddress</h6> 
 -->               <form:input path="user_address2" id="sample6_address" readonly="true" class="form-control" style="color:white; font-size:18px; border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
<!--               <h6 style="color:white; font-size: 13px;">detailAddress</h6> 
 -->               <form:input path="user_address3" id="sample6_detailAddress" readonly="true" class="form-control" style="color:white; font-size:18px; border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
<!--              <h6 style="color:white; font-size: 13px;">extraAddress</h6> 
 -->               <form:input path="user_address4" id="sample6_extraAddress" readonly="true" class="form-control" style="color:white; font-size:18px; border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
            
               </div>
               <div class="form-wrapper" >
                  <h6 style="color:white; font-size:19px;">email</h6>
               <form:input path="user_email" readonly="true" class="form-control" style="color:white; font-size:18px; border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
               </div>
               <div class="form-wrapper">
                  <h6 style="color:white; font-size:19px;">Grade</h6>
               <form:input path="user_id" readonly="true" class="form-control" style="color:white; font-size:18px; border:solid 0px #e5e6e7; box-shadow:0px 1px;"/>
               </div>
               &nbsp;&nbsp;&nbsp;&nbsp;<form:button style="width:170px; background:#871b01;<%--  color: #000 !important; --%>">정보수정
                  <i class="zmdi zmdi-arrow-right"></i>
               </form:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <button type="button" onclick="location.href='${root}user/delete?user_number=${userMypage.user_number }'" style="width:170px; background:#871b01;/*  color: #000 !important; */">회원탈퇴</button>
            </form:form>
         </div>
      </div>
       <c:import url="/WEB-INF/views/include/bottom_info.jsp" />
   </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>