<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
   content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Pricing example · Bootstrap v5.1</title>


<style>
.user_name{
    font-size:14px;
    font-weight: bold;
}
.comments-list .media{
    border-bottom: 1px dotted #ccc;
}

h4 {
   
    text-align: center;
}
.card-img, .card-img-bottom, .card-img-top {
    width: 100%;
    height: 300px;
    background-size: cover;
    /* text-align: center; */
}

</style>

<!-- 내꺼 부트스트랩 링크 -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
   crossorigin="anonymous">
   
   <!-- Bootstrap CSS -->
   <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
   <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- 탑메뉴 -->
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/noscript.css" />
<link rel="stylesheet" href="../assets/css/scroll.css" />

<c:import url="/WEB-INF/views/include/top_menu.jsp" />
</head>

<!-- 내꺼 부트스트랩 링크 -->
<link rel="stylesheet" href="../subscribe_product_bot/css/mystyle.css"/>


<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script> <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script> <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js">
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">    
</head>
<body>

<!-- 타이틀 -->

<div style="margin-top:70px" class="mb-5">
<H4><font color="#555555"  >REVIEW</font></H4>
</div>
<p/>
<p/>

<!-- 내용 -->

<!-- 카드 -->

<div class="container mx-auto">
   <div class="row">
      <div class="col-md-6 cal-sm-6">
         <div class="card" >
            <img src="../subscribe_product_bot/images/fulls/review1.jpg" class="card-img-top" >
            <div class="">
               <h5 class="card-title text-center">EASY BOX</h5>
<!--                 <p class="card-text text-center">Some quick example text to build on the
                  card title and make up the bulk of the card's content.</p> -->
            </div>
         </div>
      </div>

      <div class="col-md-6 cal-sm-6 ">
         <div class="card" >
            <img src="../subscribe_product_bot/images/fulls/review2.jpg" class="card-img-top" >
            <div class="">
               <h5 class="card-title text-center">정기구독서비스</h5>
<!--                <p class="card-text text-center">Some quick example text to build on the
                  card title and make up the bulk of the card's content.</p> -->
            </div>
         </div>
      </div>
   </div>
</div>
<P/>
   <!-- 코맨트    -->
<!------ Include the above in your HEAD tag ---------->
<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">


      <div class="row">
       <script src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
  <script>
          tinymce.init({
              selector: "textarea",
              plugins: [
                  "advlist autolink lists link image charmap print preview anchor",
                  "searchreplace visualblocks code fullscreen",
                  "insertdatetime media table contextmenu paste"
              ],
              toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
          });
  </script>
  
     <!-- user정보안에서 구독 or 이지박스 하나라도 구매한사람만 보이게 -->
     <c:if test="${loginUsersubscirbe==true }">
        <hr />
           <!-- the comment box -->
           <form:form action="${root }subscribe/subscribe_review_pro" modelAttribute="reviewContentBean" method="post" >
                <div class="well">
                   <h4><i class="fa fa-paper-plane-o"></i> Comment:</h4>
                   <%-- <form role="form">  --%>
                   <div class="form-group">
                <!-- if문 으로 구독이랑 이지박스 둘다 구매한 사람이면 select로 뜨게하고 아니면 for문으로 하나씩 -->
 						<%-- <c:forEach var="" items="${userInfo2} "></c:forEach> --%>
                        <form:select path="rating" class="form-select">
                           <form:option value="0">리뷰 작성할 상품을 선택하세요</form:option>
                           <form:option value="1" >이지박스EASY BOX</form:option>
                           <form:option value="2">정기구독서비스</form:option>
                        </form:select>
                        
                        <form:textarea path="review_text" class="form-control" rows="3"/>
                   </div>
                   <form:button type="submit" name="say" value="" class="btn btn-primary"><i class="fa fa-reply"></i> Submit</form:button>
                </div>    
            </form:form>
         <hr /> 
    </c:if>          
               

                <!-- the comments -->
   
<%--            <c:forEach var="obj" items="${reviewList }">
              <tbody>
                <tr>
                  <td>${obj.rating }</td>
                  <td>${obj.review_id }</td>
                  <td>${obj.review_date }</td>
                  <td>${obj.review_text }</td>
                <tr/>  
              </tbody><p/>
           </c:forEach>
           
            --%>
                        
                 <c:forEach var="obj" items="${reviewList }">
                 <c:set var="username" value="${loginUserName}"/>
                <h3><i class="fa fa-comment"></i>
              <%--   <c:forEach var="review" items="${ reviews }" varStatus="status"> 
                  <!-- 평점 기준 별표시 출력 -->
                    <c:forEach var="rating" items="${ ratingOptions }" varStatus="status" begin="1" end="${ review.rating }">★</c:forEach>--%>
                    [${obj.rating }]
                    ${obj.review_id }
                    <c:set var="objname" value="${obj.review_id }"/>

                    <small> ${obj.review_date }</small>
                    <c:if test="${username == objname }">
                       <a href="${root }subscribe/subscribe_delete?objNumber=${obj.review_number}">x</a>
                    </c:if>
                </h3>
                <p>${obj.review_text }</p> 
             </c:forEach>


     </div>
           

   </div>

   </div>



    <!-- Footer -->
      <c:import url="/WEB-INF/views/include/bottom_info.jsp" />

      <!-- Scripts -->
         <script src="../subscribe_bot/js/jquery.min.js"></script>
         <script src="../subscribe_bot/js/jquery.poptrox.min.js"></script>
         <script src="../subscribe_bot/js/jquery.scrolly.min.js"></script>
         <script src="../subscribe_bot/js/jquery.scrollex.min.js"></script>
         <script src="../subscribe_bot/js/browser.min.js"></script>
         <script src="../subscribe_bot/js/breakpoints.min.js"></script>
         <script src="../subscribe_bot/js/util.js"></script>
         <script src="../subscribe_bot/js/main.js"></script>
         <script src="../subscribe_bot/js/scroll.js"></script>

  
   <!-- 내꺼 부트스트랩 js -->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
      crossorigin="anonymous"></script>
</body>
</html>