<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <style>
        .container {
            margin-top: 50px;
            text-align: center;
        }

        h1 {
            color: #333;
            font-family: Arial, sans-serif;
        }

        form {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            font-weight: bold;
            font-family: Arial, sans-serif;
            margin-bottom: 5px;
        }

        input[type="text"],
        textarea {
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 1000px;
        }

        input[type="submit"] {
            display: inline-block;
            background-color: #337ab7;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: Arial, sans-serif;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
<h1>Edit Ad</h1>
    <p>Created By: ${sessionScope.user.username}</p>
<form action="/ads/edit" method="post">
    <div class="form-group">
    <input type="hidden" name="id" value="${ad.id}">
        <input type="hidden" name="userid" value="${ad.userId}">
    </div>-
    <div>
        <label for="title">Title:</label>
        <input type="text" name="title" id="title" value="${ad.title}">
    </div>
    <div class="form-group">
        <label for="description">Description:</label>
        <textarea name="description" id="description">${ad.description}</textarea>
    </div>
    <input type="submit" id="btn" class="btn btn-block">
</form>
</div>
<div class="container">
    <footer class="sticky-bottom d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <p class="col-md-4 mb-0 text-body-secondary">&copy; 2023 Art-Lister</p>

        <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-brush-fill" viewBox="0 0 16 16">
                <path d="M15.825.12a.5.5 0 0 1 .132.584c-1.53 3.43-4.743 8.17-7.095 10.64a6.067 6.067 0 0 1-2.373 1.534c-.018.227-.06.538-.16.868-.201.659-.667 1.479-1.708 1.74a8.118 8.118 0 0 1-3.078.132 3.659 3.659 0 0 1-.562-.135 1.382 1.382 0 0 1-.466-.247.714.714 0 0 1-.204-.288.622.622 0 0 1 .004-.443c.095-.245.316-.38.461-.452.394-.197.625-.453.867-.826.095-.144.184-.297.287-.472l.117-.198c.151-.255.326-.54.546-.848.528-.739 1.201-.925 1.746-.896.126.007.243.025.348.048.062-.172.142-.38.238-.608.261-.619.658-1.419 1.187-2.069 2.176-2.67 6.18-6.206 9.117-8.104a.5.5 0 0 1 .596.04z"/>
            </svg>        </a>

        <ul class="nav col-md-4 justify-content-end">
            <li class="nav-item"><a href="/index.jsp" class="nav-link px-2 text-body-secondary">Home</a></li>
            <li class="nav-item"><a href="/about.jsp" class="nav-link px-2 text-body-secondary">About</a></li>
        </ul>
    </footer>
</div>
</body>
</html>
