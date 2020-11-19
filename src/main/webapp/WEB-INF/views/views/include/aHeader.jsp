 <%@include file ="/WEB-INF/views/include/header.jsp" %>
 

 
  <!-- slider Area Start-->
  <div class="slider-area ">
    <!-- Mobile Menu -->
    <div class="single-slider slider-height2 d-flex align-items-center" data-background="/assets/img/hero/category.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap text-center">
                        <h2><sec:authentication property="principal.username"/>'s Page</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
  <!-- slider Area End-->
    
   <!-- feature part here -->
    <section class="feature_part section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-2 col-sm-5" onclick="location.href='/shop/shopInfo'" style="cursor:pointer">
                    <div class="single_feature_part">
                        <a href="#"><img src="/assets/img/icon/feature_icon_1.svg" alt="#"></a>
                        <h4>All Shop</h4>
                    </div>
                </div>
                
                <div class="col-lg-2 col-sm-5" onclick="location.href='/shop/shopOrderList'" style="cursor:pointer">
                    <div class="single_feature_part">
                        <img src="/assets/img/icon/icon_2.png" alt="#">
                        <h4>New Order</h4>
                    </div>
                </div>
                
                <div class="col-lg-2 col-sm-5" onclick="location.href='/shop/shopProduct'" style="cursor:pointer">
                  <div class="single_feature_part">
                        <img src="/assets/img/icon/feature_icon_2.svg" alt="#">
                        <h4>All Product</h4>
                    </div>
                </div>
                
                <div class="col-lg-2 col-sm-5" onclick="location.href='/shop/shopQnA'" style="cursor:pointer">
                    <div class="single_feature_part">
                        <img src="/assets/img/icon/icon_4.png" alt="#">
                        <h4>Notice</h4>
                    </div>                  
                </div>
                
                <div class="col-lg-2 col-sm-5" onclick="location.href='/shop/shopReview'" style="cursor:pointer">
                    <div class="single_feature_part">
                        <img src="/assets/img/icon/feature_icon_4.svg" alt="#">
                        <h4>Contact</h4>
                    </div>                  
                </div>
            </div>
        </div>
    </section>
    <!-- feature part end -->