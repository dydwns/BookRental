<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Home</title>
    <meta charset="UTF-8">
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
        crossorigin="anonymous">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container d-flex flex-column">
                <h1>도서 고객 및 대여관리 프로그램</h1>
                <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="customerJoin">고객등록</a></li>
                        <li class="nav-item"><a class="nav-link" href="customer">고객목록조회/수정</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">고객대여리스트</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">고객대여금액조회</a></li>
                        <li class="nav-item"><a class="nav-link" href="/">홈으로</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="content my-5  mx-auto w-50">
	    <div class="card">
	        <div class="card-header text-center">
	            도서 고객 및 대여관리 프로그램
	        </div>
	        <ul class="list-group list-group-flush">
	            <li class="list-group-item">프로그램 작성순서</li>
	        </ul>
	    </div>
    </div>
    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
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
</head>
<body>

<h1>고객 등록</h1>
<form id="customerForm" action="/customer" method="post" onsubmit="return validateForm();">
    <label for="customerNumber">고객번호:</label>
    <input type="text" id="customerNumber" name="customerNumber" required><br><br>

    <label for="customerName">고객이름:</label>
    <input type="text" id="customerName" name="customerName" required><br><br>

    <label for="phoneNumber">전화번호:</label>
    <input type="text" id="phoneNumber" name="phoneNumber" required><br><br>

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

</body>
</html>
    
    
    <footer class = "bg-secondary-subtle text-center py-3 border-top border-bottom border-secondary">
    나도 할 수 있는 Java & Spring 웹 개발 종합반(이용준)</footer>
    
    
</body>
</html>
