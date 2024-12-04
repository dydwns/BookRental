<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="header.jsp" %>

<div class="content my-5 mx-auto w-50">
    <div class="card">
        <div class="card-header text-center">
            고객 정보 수정
        </div>
        <div class="card-body">
            <form id="customerForm" action="/customer" method="post" onsubmit="return validateForm();">
                <div class="mb-3">
                    <label for="cust_no" class="form-label">고객번호:</label>
                    <input type="text" class="form-control" id="cust_no" name="cust_no" value="${customer.cust_no}" readonly>
                </div>

                <div class="mb-3">
                    <label for="cust_name" class="form-label">고객이름:</label>
                    <input type="text" class="form-control" id="cust_name" name="cust_name" value="${customer.cust_name}" required>
                </div>

                <div class="mb-3">
                    <label for="phone" class="form-label">전화번호:</label>
                    <input type="text" class="form-control" id="phone" name="phone" value="${customer.phone}" required>
                </div>

                <div class="mb-3">
                    <label for="cust_email" class="form-label">이메일:</label>
                    <input type="email" class="form-control" id="cust_email" name="cust_email" value="${customer.cust_email}" required>
                </div>

                <div class="mb-3">
                    <label for="grade" class="form-label">고객등급:</label>
                    <select class="form-select" id="grade" name="grade" required>
                        <option value="">등급 선택</option>
                        <option value="Platinum" ${customer.grade == 'Platinum' ? 'selected' : ''}>플래티넘</option>
                        <option value="Gold" ${customer.grade == 'Gold' ? 'selected' : ''}>골드</option>
                        <option value="Silver" ${customer.grade == 'Silver' ? 'selected' : ''}>실버</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="join_date" class="form-label">가입일:</label>
                    <input type="text" class="form-control" id="join_date" value="${customer.join_date}" readonly>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary">수정</button>
                    <a href="/customer/${customer.cust_no}" class="btn btn-secondary">취소</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function validateForm() {
        const customerNumber = document.getElementById("customerNumber").value;
        const customerName = document.getElementById("customerName").value;
        const phoneNumber = document.getElementById("phoneNumber").value;
        const email = document.getElementById("email").value;
        const customerGrade = document.getElementById("customerGrade").value;

        if (!customerNumber || !customerName || !phoneNumber || !email || !customerGrade) {
            alert("모든 필드를 입력해주세요.");
            return false;
        }

        // 이메일 형식 확인
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            alert("유효한 이메일 주소를 입력해주세요.");
            return false;
        }

        return true;
    }

    function clearForm() {
        document.getElementById("customerForm").reset();
    }
</script>

<%@ include file="footer.jsp" %>

