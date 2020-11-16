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
                        <h2>Checkout</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
  <!-- slider Area End-->

  <!--================Checkout Area =================-->
  <section class="checkout_area section_padding">
    <div class="container">
		<br>
		<br>
<form class="row contact_form" action="#" method="post" novalidate="novalidate">
      <div class="billing_details">
        <div class="row">
          <div class="col-lg-8">
            <h3>Billing Details</h3>
            
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="name" name="name" value="${user.name }" />
              </div>
  

              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="phone" name="phone" value="${user.phone }"/>
              </div>
              
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="zipcode" name="zipcode" value="${user.zipcode }"/>
              </div>

              <div class="col-md-12 form-group p_star">
                <input type="text" class="form-control" id="addr" name="addr" value="${user.addr }" />
              </div>
              
			  <br>

          </div>
          
          
          
          <div class="col-lg-4">
            <div class="order_box">
              <h2>Your Order</h2>
              <ul class="list">            
                <li>
                  		Product
                    <span>Total</span>
                  
                </li>
                
              <!-- c:each 시작 -->
              <c:set var="total" value="0" />
              <c:forEach items="${cart }" var="cart" varStatus="vs">
                <input type="hidden" id="sid" name="sid" value="${cart.sid }">
                <li>
                 	 ${cart.pname }
                    <span class="middle">${cart.count }</span>
                    <span class="last">${cart.sum }</span>
                </li>
                
              <c:set var = "total" value="${total + cart.sum }" />
              </c:forEach>
              <!-- c:each 종료 -->  
                
              </ul>
              <ul class="list list_2">
                <li>
                  <a href="#">Total
                    <span><c:out value="${total }"/></span>
                  </a>
                </li>
              </ul>

              <div class="creat_account">
                <input type="checkbox" id="f-option4" name="selector" />
                <label for="f-option4">I read and accept the </label>
                <a href="#">terms & conditions*</a>
              </div>
              <a class="btn_3" href="#">Proceed to Paypal</a>
            </div>       
          </div>
        </div>
      </div>
      
      </form>
    </div>
  </section>
  <!--================End Checkout Area =================-->

<%@include file ="/WEB-INF/views/include/footer.jsp" %>