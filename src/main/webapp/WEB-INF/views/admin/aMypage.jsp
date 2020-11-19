<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/include/aHeader.jsp" %>
 
 
    <section class="latest-product-area latest-padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5  col-sm-4" >
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <h3>Today Order</h3>
                                 </div>
                                 <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Search Keyword'
                                        onfocus="this.placeholder = ''"
                                        onblur="this.placeholder = 'Search Keyword'">
                                 </div>
                            </div>
    					</aside>
                    </div>
               </div>
               
               <div class="col-lg-5  col-sm-4" >
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            <div class="form-group">
                                <div class="input-group mb-3">                                    
                                    <h3>This Week</h3>
                                 </div>
                                 <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Search Keyword'
                                        onfocus="this.placeholder = ''"
                                        onblur="this.placeholder = 'Search Keyword'">
                                 </div>
                            </div>
    					</aside>
                    </div>
               </div>
               
           </div>
        </div>
     </section>

 
<%@include file ="/WEB-INF/views/include/footer.jsp" %>