<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="header.jsp" %>


<div class="content my-5 mx-auto w-50">
    <div class="card">
        <div class="card-header text-center">
            고객 목록
        </div>

        <div class="card-body text-center">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>고객 번호</th>
                        <th>이름</th>
                        <th>전화번호</th>
                        <th>가입일</th>
                        <th>이메일</th>
                        <th>등급</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td><a href="/customer/${customer.cust_no}">${customer.cust_no}</a></td>
                            <td>${customer.cust_name}</td>
                            <td>${customer.phone}</td>
                            <td>${customer.join_date}</td>
                            <td>${customer.cust_email}</td>
                            <td>${customer.grade}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<%@ include file="footer.jsp" %>
