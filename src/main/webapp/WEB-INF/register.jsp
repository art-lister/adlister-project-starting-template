<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1>Please fill in your information.</h1>

    <%-- Display error message if username is unavailable --%>
    <% if (request.getParameter("error") != null && request.getParameter("error").equals("username")) { %>
    <div class="alert alert-danger" role="alert">
        This username is unavailable. Please choose a different username.
    </div>
    <% } else if (request.getParameter("error") != null && request.getParameter("error").equals("password")) { %>

    <%-- Display error message if passwords do not match --%>
    <div class="alert alert-danger" role="alert">
        Passwords do not match. Please enter the same password in both fields.
    </div>
    <% } %>

    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&+=]).{4,}">
            <small id=“passwordRequirements” class=“form-text text-muted”>
                Password must be at least 4 characters long and contain at least one uppercase letter, one digit, and one special character (*).
            </small>
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password" required oninput="checkPasswordMatch">
        </div>
        <br>
        <input type="submit" class="btn btn-block">
    </form>
</div>
<div class="container">
    <footer class="fixed-bottom d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
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
<script>
    function checkPasswordMatch(){
        let password = document.getElementById("password").value;
        let confirmPassword = document.getElementById("confirm_password").value;
        let passwordMatchError = document.getElementById("passwordMatchError");
        if( password !== confirmPassword){
            passwordMatchError.textContent = "Passwords don't match.";
        } else{
            passwordMatchError.textContent ="";
        }
    }
</script>
</html>