<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
      <div class="nav-item"><a class="nav-link" href="/"><h1>도서 고객 및 대여관리 프로그램</h1></a></div>

      <button class="navbar-toggler" type="button"
              data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false"
              aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item"><a class="nav-link" href="/customer/join">고객등록</a></li>
          <li class="nav-item"><a class="nav-link" href="/customers">고객목록조회/수정</a></li>
          <li class="nav-item"><a class="nav-link" href="#">고객대여리스트</a></li>
          <li class="nav-item"><a class="nav-link" href="#">고객대여금액조회</a></li>
          <li class="nav-item"><a class="nav-link" href="/">홈으로</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

</body>
</html>
