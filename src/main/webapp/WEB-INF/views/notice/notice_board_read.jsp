<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>

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
<div class="container">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">작성자</th>
      <th scope="col">내용</th>
      <th scope="col">시간</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>질문있어여
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal">
		  ..더보기
		</button> 
	</td>
	
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">제목따라오기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>     

			<div class="modal-body">
	        <!-- 내용 -->
	         <form id="form1" name="form1" method="post" action="${path}/board/insert.do">
				<div class="input-group mb-3">
				  <span class="input-group-text">작성자</span>
				  <input type="text" class="form-control" placeholder="Username" aria-label="Username">
				  <span class="input-group-text">시간</span>
				  <input type="text" class="form-control" placeholder="Time" aria-label="Time">
				</div>
				 
	        		  <div >
					  <textarea>질문있는사람 오른손 들어</textarea>
					 </div>

		   <div>
	       <div style="text-align:right;" >
	   		 </div>	
	   		</form>	 	  
	      </div>
	      <div class="modal-footer">
	      </div>
	    </div>
	  </div>
	</div>      
  </div>    
	     
      
      <td>2021:10:11</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>
    


<!-- 페이지 -->
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center"">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
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