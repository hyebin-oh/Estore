<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="/assets/img/hero/category.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>product Details</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

  <!--================Single Product Area =================-->

  <div class="product_image_area">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="product_img_slide owl-carousel">
            <div class="single_product_img">
              <img src="../resources/upload/product/${product.pimg }" alt="#" class="img-fluid">
            </div>
            <div class="single_product_img">
              <img src="../resources/upload/product/${product.pimg }" alt="#" class="img-fluid">
            </div>
            <div class="single_product_img">
              <img src="../resources/upload/product/${product.pimg }" alt="#" class="img-fluid">
            </div>
          </div>
        </div>
        <div class="col-lg-8">
          <div class="single_product_text text-center">
            <input type="hidden" name="pnum" id="pnum" value="${product.pnum }">
            <input type="hidden" name="sid" id="sid" value="${product.sid }">
            <input type="hidden" name="userid" id="userid" value="<sec:authentication property='principal.username'/>">
            <h3>${product.pname }</h3>
            <p>${product.pdetail }</p>
            <div class="card_area">
            
            	<div class="product_count_area">

                   <div class="product_count_area">
                   	  <p>${product.price } won</p>
                   </div>               
                </div>
                
                
            
                <div class="product_count_area">
                    
                    <p>Quantity</p>
                    <div class="product_count d-inline-block">
                        <span class="product_count_item inumber-decrement"> <i class="ti-minus"></i></span>
                        <input class="product_count_item input-number" id="count" type="text" value="1" min="0" max="10">
                        <span class="product_count_item number-increment"> <i class="ti-plus"></i></span>
                    </div>
                    
                </div>
              <div class="add_to_cart">
              	  <!-- 비회원/회원 장바구니 보이게  -->
              	  <sec:authorize access="hasRole('ROLE_USER')">
	                  <input type="button" value="장바구니" class="btn_3" id="btnAddCart"
	                  onclick="javascript:addCart('${product.pname }','${product.price }','${product.sid }')">
	              </sec:authorize>
	              
	              <sec:authorize access="isAnonymous()">
	                  <input type="button" value="장바구니" class="btn_3" id="btnCart">
	              </sec:authorize>
                  
                  <!-- 판매자만 보이게 -->
                  <sec:authorize access="hasRole('ROLE_MANAGER')">
	                  <input type="button" value="수정하기" class="genric-btn success-border radius" 
	                  onclick="location.href='/product/productUpdate?pnum=${product.pnum}'">
	                  <input type="button" value="삭제하기" class="genric-btn danger-border radius"
	                  onclick="location.href='/product/productDelete?pnum=${product.pnum }'">
                  </sec:authorize>
                                    
              </div>
            </div>
          </div>
        </div>
      </div>
      <hr>
      <!-- 리뷰 / qna 버튼 생성 -->
      
      
    </div>
  </div> 

<script>

$("#btnCart").click(function(){
	alert("로그인이 필요합니다");
})

function addCart(pname, price, sid){
	var data={
		"pnum":$("#pnum").val(),
		"userid":$("#userid").val(),
		"pname":pname,
		"price":price,
		"count":$("#count").val(),
		"sid":sid		
	};

	$.ajax({
		type:"post",
		url:"/cart/cartInsert",
		contentType:'application/json;charset=utf-8',
		data:JSON.stringify(data)
	})
	.done(function(resp){
		if(resp=="success"){
			alert("장바구니에 추가되었습니다.");
			location.href="/cart/cartList";
		}

	})
	.fail(function(error){
		alert("error..ㅠㅠ")
	})

}
</script>
  
<%@include file ="/WEB-INF/views/include/footer.jsp" %>
  