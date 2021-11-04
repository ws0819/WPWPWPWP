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
h3 {
   
    text-align: center;
   
}
#popup {
  display: flex;
  justify-content: center;
  align-items: center;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, .7);
  z-index: 1;
  backdrop-filter: blur(4px);
  -webkit-backdrop-filter: blur(4px);
}

#popup.hide {
  display: none;
}

#popup.multiple-filter {
  backdrop-filter: blur(4px) grayscale(90%);
  -webkit-backdrop-filter: blur(4px) grayscale(90%);
}

#popup .content {
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  box-shadow: 1px 1px 3px rgba(0, 0, 0, .3);
}

.modal-content {
    position: relative;
    display: flex;
    flex-direction: column;
    width: 100%;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3rem;
    outline: 0;
    padding: 15px;
    top: 50px;
}
.btn-link {
    font-weight: 400;
    color: #39454b;
    text-decoration: none;
}  
</style>

<!-- 내꺼 부트스트랩 링크 -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
   crossorigin="anonymous">
   
<link rel="canonical"
   href="https://getbootstrap.com/docs/5.1/examples/pricing/">

<!-- 탑메뉴 -->
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>
<link rel="stylesheet" href="../assets/css/scroll.css" />


<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<head>
<!-- 내꺼 부트스트랩 링크 -->
<link rel="stylesheet" href="../subscribe_product_bot/css/mystyle.css"/>
</head>

<body>

<!-- 타이틀 -->
<div style="margin-top:100px; margin-bottom:100px;">
<H3><font color="#555555"  >NOTICE BOARD</font></H3>
</div>
<p/>



<!-- 테이블 -->
<div class="container ">

<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        구독 신청 과정과 구독 상품별 차이를 알고싶어요
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      <small style="font-size:80%;">*홈페이지 상단메뉴 내 [구독서비스]-> 구독-> 이지박스 / ORANGE SINGLE/ ORANGE DOUBLE/ VLOLET / BLACK 선택 -> 장바구니 -> 결제*<P/>
      이지박스는 이달의 와인 종류 6가지 중 1가지를 랜덤으로 발송해드리며, 구독서비스는 결제 후 소믈리에 상담을 통하여 고객님 취향에 맞는 와인을 구독서비스 가격대로 선정하여 보내드립니다.<P/>
      ORANGE SINGLE: 49000원 소물리에 상담+와인1병<P/> ORANGE DOUBLE: 89000원 소믈리에 상담+와인2병<P/> VLOLET: 98000원 소물리에 상담+와인1병<P/> BLACK: 800000원 소물리에 상담 후 개수 결정
     </small>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        이지박스에서 받을수 있는 와인과 가격대가 궁금해요
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <small style="font-size:80%;">[이지박스]는 RED, WHITE, SPARKLING, ROSE, DESERT 종류의 다양한 가격대의 와인 1병을 50000원에 랜덤으로 보내드리는 구성품입니다.
        랜덤으로 보내드리는 종류는 매달 1일마다 변경되며, 홈페이지 상단메뉴 내 [구독서비스]-> 이지박스사진에서 이달의 와인을 미리 만나보실 수 있습니다.
        </small>
        
      </div>
    </div>
  </div>
 <P>


<table class="table table-hover ">
  <thead>
    <tr">
      <th scope="row">#</th>
      <!-- <th scope="col">작성자</th> -->
      <th scope="row">작성자</th>
      <th scope="row">공지사항 제목</th>
      <th scope="row">시간</th>
    </tr>
  </thead>
  <c:forEach var="obj" items="${noticeList }">
  <tbody>
    <tr>
      <th scope="row">${obj.notice_number }</th>
      <td>와인이지</td>
      <td>
      <a href='${root}notice/notice_read?notice_title=${obj.notice_title }&notice_number=${obj.notice_number}' style="text-decoration:none; color: #39454b; font-weight: bold">${obj.notice_title }</a>
    </td>
   
      <td>${obj.notice_date }</td>
    </tr>

  </tbody>
  </c:forEach>
</table>
</div>
</div>   


<!-- 페이지 -->
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
     <c:choose>
        <c:when test="${pageBean.prevPage <= 0 }">
           <li class="page-item disabled">
            <a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
          </li>
        </c:when>
      <c:otherwise>
           <li class="page-item">
            <a class="page-link" href="${root }notice/notice_board_read?page=${pageBean.prevPage}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
          </li>
      </c:otherwise>
    </c:choose>
    <c:forEach var="idx" begin="${pageBean.min}" end="${pageBean.max }">
       <c:choose>
          <c:when test="${idx == pageBean.currentPage }">
             <li class="page-item">
                <a class="page-link" href="${root }notice/notice_board_read?page=${idx}">${idx }</a>
             </li>
          </c:when>
          <c:otherwise>
             <li class="page-item">
                <a href="${root }notice/notice_board_read?page=${idx}" class="page-link">${idx }</a>
             </li>
          </c:otherwise>
       </c:choose>
   </c:forEach>
   <c:choose>
      <c:when test="${pageBean.max >= pageBean.pageCnt }">   
          <li class="page-item disabled">
            <a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
          </li>
      </c:when>
      <c:otherwise>   
          <li class="page-item">
            <a class="page-link" href="${root }notice/notice_board_read?page=${pageBean.nextPage}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
          </li>
      </c:otherwise>
   </c:choose>
  </ul>
</nav>

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