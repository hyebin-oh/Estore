<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/include/uHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
  <section class="checkout_area section_padding">
        <div class="container">
			<div class="section-top-border">
				<h3 class="mb-30">Latest Order(최근 1달)</h3>					
			</div>
			
	  <div class="cart_inner">
        <div class="table-responsive">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">날짜</th>
                <th scope="col">상품정보</th>
                <th scope="col">상태</th>
                <th scope="col">리뷰쓰기</th>
              </tr>
            </thead>
            
            <tbody>
            
            <c:forEach items="${uMonthList }" var="list" varStatus="vs">  
            
              <tr>
                <td><!-- 날짜 -->
                  <h5>${list.create_date }</h5>
                </td>              
              
                <td><!-- 상품정보 -->
                  <div class="media">
                    <div class="d-flex">
                      <img src="assets/img/arrivel/arrivel_1.png" alt="" />
                    </div>
                    <div class="media-body">
                      <p>${list.pname }</p>
                    </div>
                  </div>
                </td>

                <td><!-- 상태 -->
					<h5>${list.orderstate }</h5>
                </td>
                
                <td><!-- 리뷰 -->
                  <h5>리뷰작성상태.........</h5>
                </td>
              </tr>

			</c:forEach>


            </tbody>
          </table>

        </div>
      </div>
			
			

        </div>
     </section>

 
<%@include file ="/WEB-INF/views/include/footer.jsp" %>