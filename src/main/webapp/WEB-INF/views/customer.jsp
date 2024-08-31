<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="header.jsp" %>


<div class="content my-5 mx-auto w-75">
    <div class="card">
        <div class="card-header text-center">
            고객 상세 정보
        </div>
        <div class="card-body">
            <table class="table">
                <tr>
                    <th class="w-25">고객번호</th>
                    <td>${customer.cust_no}</td>
                </tr>
                <tr>
                    <th>고객이름</th>
                    <td>${customer.cust_name}</td>
                </tr>
                <tr>
                    <th>전화번호</th>
                    <td>${customer.phone}</td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td>${customer.cust_email}</td>
                </tr>
                <tr>
                    <th>고객등급</th>
                    <td>${customer.grade}</td>
                </tr>
                <tr>
                    <th>가입일</th>
                    <td>${customer.join_date}</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="text-center mt-3">
        <a href="/customer/edit/${customer.cust_no}" class="btn btn-primary">정보 수정</a>
        <a href="/customer/list" class="btn btn-secondary">목록으로</a>
    </div>
</div>


<%@ include file="footer.jsp" %>
