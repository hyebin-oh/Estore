<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/include/uHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


  <!--================Cart Area =================-->
  <section class="cart_area section_padding">
    <div class="container">
      <div class="cart_inner">
        <div class="table-responsive">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">Ordernum</th>
                <th scope="col">product</th>
                <th scope="col">price</th>
                <th scope="col">orderDate</th>
                <th scope="col">orderState</th>
              </tr>
            </thead>
            <tbody>
             <c:forEach items="${uOlist }" var="list" varStatus="vs">
              <tr>
                <td>
           		 <h5>${list.ordernum }</h5><!-- 상품명 -->
                </td>
                
                <td>
           		 <h5>${list.pname }</h5>
                </td>
                
                <td>
           		 <h5>${list.price }</h5>
                </td>
                
                <td>
           		 <h5>${list.create_date }</h5>
                </td>
                
                <td>
                  <h5>${list.orderstate }</h5>
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
