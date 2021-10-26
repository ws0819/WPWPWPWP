<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
 <div class="wrap">
         <div class="container">
            <div class="seyoungrow">
               <div class="col-md-6 d-flex" >
                  <p class="mb-0 d-flex"></p>
                   <a class="navbar-brand" href="${root }main" style="color:#98C593;">WINE EASY</a>
               </div>
             
              <div class="reg">
                 <p class="mb-0 d-flex">
                	 <a href="${root}subscribe/subscribe">구독서비스</a> 
                 	 <a href="${root}product/home">와인구매</a> 
                	 <a href="${root}notice/notice_board_read">공지사항</a>
                 	 <a href="${root}user/login">로그인/회원가입</a>
                 	 </p>
              </div>
              
               </div>
            </div>
         </div>
    