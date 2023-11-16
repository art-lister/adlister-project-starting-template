<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style>
        .container {
            margin-top: 50px;
            text-align: center;
        }

        h1, h2, h3 {
            color: #333;
            font-family: Arial, sans-serif;
        }
        h1{
            font-size: 60px;
        }
        p {
            color: #666;
            font-family: Arial, sans-serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f5f5f5;
        }

        a {
            text-decoration: none;
            color: #337ab7;
        }

        a:hover {
            text-decoration: underline;
        }

        form {
            display: inline-block;
            margin-top: 20px;
        }

        .btn {
            background-color: #337ab7;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: Arial, sans-serif;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 150px;
        }

        .btn:hover {
            background-color: #286090;
        }
        .btn:focus{
            transform: scale(0.98);
        }
        .user-info {
            margin-bottom: 100px;
        }

        .user-info p {
            margin: 5px;
        }
        .edit-delete-buttons {
            margin-top: 20px;
            display: table;
            margin: 0 auto;
        }

        .edit-delete-buttons form {
            display: table-cell;
            padding: 10px;
            vertical-align: middle;
            text-align: center;
        }

        .edit-delete-buttons h4 {
            margin-top: 14px;
            padding-bottom: 10px;
        }

        .edit-delete-buttons input[type="submit"] {
            display: block;
            margin: 0 auto;
        }

        .edit-delete-buttons .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .edit-delete-buttons .form-container h4,
        .edit-delete-buttons .form-container input[type="submit"] {
            margin: 5px 0;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <div>
        <p>Username: ${sessionScope.user.username}</p>
        <p>Email: ${sessionScope.user.email}</p>
    </div>

        <!-- Edit button -->
        <form method="get" action="/editprofile" class="editForm">
            <input type="hidden" name="userId" value="${sessionScope.user.id}">
            <input type="submit" class="btn" value="Edit Profile">
        </form>

        <!-- Delete button -->
        <form method="post" action="/deleteuser" class="editForm">
            <input type="hidden" name="userId" value="${sessionScope.user.id}">
            <input type="submit" class="btn" value="Delete Profile">
        </form>


    <c:if test="${not empty ads}">
        <h2>Your Ads:</h2>
        <table class="table">
            <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Edit/Delete</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="ad" items="${ads}">
                <tr>
                    <td>${ad.title}</td>
                    <td>${ad.description}</td>
                    <td class="d-flex justify-content-end">
                    <form method="get" action="ads/edit?id=${ad.id}" class="editAd px-2">
                        <input type="hidden" name="id" value="${ad.id}">
                        <input type="submit" class="btn" value="Edit">
                    </form>
                    <form method="post" action="ads/deletead?id=${ad.id}" class="deleteAd px-2">
                        <input type="hidden" name="id" value="${ad.id}">
                        <input type="submit" class="btn" value="Delete">
                    </form>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
    <button type="button" class="btn"><a href="/ads/create">Create Ad</a></button>

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
