<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="header.jsp" %>


<div class="content my-5 mx-auto w-50">
    <div class="card">
        <div class="card-header text-center">
            고객 등록
        </div>

        <div class="card-body text-center">
            <form id="customerForm" action="/customer" method="post" onsubmit="return validateForm();">
            <label for="customerNumber">고객번호:</label>
            <input type="text" id="customerNumber" name="customer_number" required><br><br>

            <label for="customerName">고객이름:</label>
            <input type="text" id="customerName" name="customer_name" required><br><br>

            <label for="phoneNumber">전화번호:</label>
            <input type="text" id="phoneNumber" name="phone_number" required><br><br>

            <label for="email">이메일:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="customerGrade">고객등급:</label>
            <select id="customerGrade" name="customerGrade" required>
                <option value="">등급 선택</option>
                <option value="Platinum">플래티넘</option>
                <option value="Gold">골드</option>
                <option value="Silver">실버</option>
            </select><br><br>

            <input type="submit" value="등록">
            <input type="button" value="취소" onclick="clearForm();">
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

