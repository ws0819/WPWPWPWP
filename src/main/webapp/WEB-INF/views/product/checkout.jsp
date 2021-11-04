<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>order</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
   function apibtn() {
      $.ajax({
         url:'kakaopay/' ,
         dataType:'json' ,
         success:function(data) {
            var box = data.next_redirect_pc_url;
            window.open(box);
         } ,
         error:function(error) {
            alert(error)
         }
      })
   }
</script>
<script>
    function sample4_execDaumPostcode() {
           new daum.Postcode({
               oncomplete: function(data) {
                   // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                   // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
                   // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                   var roadAddr = data.roadAddress; // ���θ� �ּ� ����
                   var extraRoadAddr = ''; // ���� �׸� ����

                   // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                   // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                   if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                       extraRoadAddr += data.bname;
                   }
                   // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                   if(data.buildingName !== '' && data.apartment === 'Y'){
                      extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                   if(extraRoadAddr !== ''){
                       extraRoadAddr = ' (' + extraRoadAddr + ')';
                   }

                   // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                   document.getElementById('sample4_postcode').value = data.zonecode;
                   document.getElementById("sample4_roadAddress").value = roadAddr;
                   document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                   
                                 var guideTextBox = document.getElementById("guide");
                   // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
                   if(data.autoRoadAddress) {
                       var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                       guideTextBox.innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
                       guideTextBox.style.display = 'block';

                   } else if(data.autoJibunAddress) {
                       var expJibunAddr = data.autoJibunAddress;
                       guideTextBox.innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
                       guideTextBox.style.display = 'block';
                   } else {
                       guideTextBox.innerHTML = '';
                       guideTextBox.style.display = 'none';
                   }
               }
           }).open();
       }
    </script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/animate.css">
<link rel="stylesheet" href="../liquorstore_master/css/owl.carousel.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/owl.theme.default.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/magnific-popup.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
<link rel="stylesheet" href="../liquorstore_master/css/flaticon.css">
<link rel="stylesheet" href="../liquorstore_master/css/style.css">
</head>
<body>

   <c:import url="/WEB-INF/views/product/top_menu.jsp" />

   <!-- END nav -->

   <section class="hero-wrap hero-wrap-2" style="background-image: url('../liquorstore_master/images/top_bg.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
               <p class="breadcrumbs mb-0">
                  <span class="mr-2">
                     <a href="${root }product/home">Home<i class="fa fa-chevron-right"></i></a></span> 
                     <span>Order <i class="fa fa-chevron-right"></i>
                     
                  </span>
               </p>
               <h2 class="mb-0 bread">Order</h2>
            </div>
         </div>
      </div>
   </section>


   <section class="ftco-section ">
      <div class="container " >
         <div class="row justify-content-center">
            <div class="col-xl-10 ftco-animate">
               <form:form method="get" action="${root }product/checkout_pro" class="billing-form" modelAttribute="OrderBean" acceptCharset="UTF-8">
               <form:hidden path="" value=""/>
                  <h3 class="mb-4 billing-heading">�ֹ�������</h3>
                  <div class="row align-items-end">
                  <div class="w-100"></div>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label for="firstname">�����ô� �� </label> &nbsp;
                              <form:input path="order_name" class="" placeholder="" />
                        </div>
                     </div>
                   
                     <div class="w-100"></div>
                     <div class="col-md-12">
                        <div class="form-group">
                           <label for="country">����� �ּ�</label><br />
                           <form:input path="postcode" id="sample4_postcode" placeholder="�����ȣ"/>
                     <input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��"/><br>
                     <form:input path="roadAddress" id="sample4_roadAddress" placeholder="���θ��ּ�"/>
                     <form:input path="jibunaddress" id="sample4_jibunAddress" placeholder="�����ּ�"/>
                     <span id="guide" style="color:#999;display:none"></span>
                     <br />
                           <div class="select-wrap">

                              <div class="icon">
                                 <span class="ion-ios-arrow-down"></span>
                              </div>

                           </div>
                        </div>
                     </div>
                     <div class="w-100"></div>
                     <div class="col-md-6">
                        <div class="form-group" >
                           <label for="phone">��ȭ��ȣ</label>&nbsp;&nbsp; 
                     <form:input path="order_tel" id="phone3" maxlength="11" size="11"  placeholder=""/> 
                        </div>
                     </div>
               <div class="w-100"></div>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label for="order_email">�̸���</label>&nbsp;
                           <form:input type="email" path="order_email"  placeholder=""  size="50"/>
                           <form:errors path="order_email"/>
                        </div>
                     </div>
                     <div class="w-100"></div>
                     <div class="col-md-6">
                        <div class="form-group">
                        <label for="message">��۸޼���</label> 
                        <form:input name="order_message" path="order_message" id="��۸޼���" placeholder="���ǿ� �ð� �ּ���" size="50"/>
                        </div>
                     </div>
               </div>
               
               <form:button type="submit" value="�Է¿Ϸ�">�ּ��Է¿Ϸ�</form:button>
               </form:form>
               <!-- END -->

               <div class="row mt-5 pt-8 ">
                  <div class="col-md-6 " style="width:1000px">
                     <div class="cart-detail cart-total p-3 p-md-4">
                        <h3 class="billing-heading mb-4">���� ���� �ݾ�</h3>
                      <p class="d-flex"> 
                           <span>�� �ֹ��ݾ�</span> <span>${total_price }��</span>
                        <!-- </p> -->
                        <hr>
                        <p class="d-flex total-price">
                           <span>�� �������� �ݾ�</span> <span>${total_price }��</span>
                        </p>
                     </div>
                  </div>
                  <br>
                  <br>
                   <br>
                 <div class="col-md-6"> 
                    <div class="cart-detail p-3 p-md-4">
                        <c:if test="${write eq 'on' }">
                        <h3 class="billing-heading mb-4">���� ����</h3>
                        <div class="form-group">
                           <div class="col-md-12">
                              <div class="radio">
                                 <label>
                                    <input type="radio" name="" class="mr-2" style="margin:0px 3px 1px 0px; width:13px; height:13px">
                                    <img src="../liquorstore_master/images/kakao.png" width="60px">
                                 </label>
                              </div>
                           </div>
                        </div>
                        <p>
                           <a href="javascript:void(0)" class="btn btn-primary py-3 px-4"  onclick="apibtn();">�����ϱ�</a>
                        </p>
                         </c:if> 
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>

   <c:import url="/WEB-INF/views/product/bottom_info.jsp" />

   <!-- loader -->
   <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
         <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
         <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
      </svg>
   </div>


   <script src="../liquorstore_master/js/jquery.min.js"></script>
   <script src="../liquorstore_master/js/jquery-migrate-3.0.1.min.js"></script>
   <script src="../liquorstore_master/js/popper.min.js"></script>
   <script src="../liquorstore_master/js/bootstrap.min.js"></script>
   <script src="../liquorstore_master/js/jquery.easing.1.3.js"></script>
   <script src="../liquorstore_master/js/jquery.waypoints.min.js"></script>
   <script src="../liquorstore_master/js/jquery.stellar.min.js"></script>
   <script src="../liquorstore_master/js/owl.carousel.min.js"></script>
   <script src="../liquorstore_master/js/jquery.magnific-popup.min.js"></script>
   <script src="../liquorstore_master/js/jquery.animateNumber.min.js"></script>
   <script src="../liquorstore_master/js/scrollax.min.js"></script>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="../liquorstore_master/js/google-map.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
   <script src="../liquorstore_master/js/main.js"></script>

</body>
</html>