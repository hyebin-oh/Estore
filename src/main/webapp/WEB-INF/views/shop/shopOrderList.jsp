<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/include/managerHeader.jsp" %>
 
<br><br><br>
<h3 align = "center">My Order</h3>
<br>
<section class="cart_area section_padding">
    <div class="container">
	
	  <div class="cart_inner">
        <div class="table-responsive">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">Ordernum</th>
                <th scope="col">UserName(주문자이름)</th>
                <th scope="col">UserID(주문자아이디)</th>
                <th scope="col">Total Count</th>
                <th scope="col">Total price</th>
                <th scope="col">orderDate</th>
                <th scope="col">orderState</th>
              </tr>
            </thead>
            <tbody>
             <c:forEach items="${sOlist }" var="list" varStatus="vs">
              <tr style = "cursor:pointer;" onClick = "location.href='/shop/orderDetail/${list.ordernum}'" >
                <td>
           		 <h5>${list.ordernum }</h5>
                </td>
                
                <td>
           		 <h5>${list.name}</h5>
                </td>
                
                <td>
           		 <h5>${list.userid}</h5>
                </td>
                                
                <td>
           		 <h5>${list.sum}</h5>
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
