<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar navbar-custom navbar-expand-lg bg-body-tertiary justify-content-start">
            <div class="container-fluid">
                <a class="navbar-brand link-secondary" href="/ads/index">Art-lister</a>
                <ul class="nav justify-content-end">

                    <%-- Check if user is logged in --%>
                    <c:if test="${sessionScope.user == null}">

                        <!-- Display registration and login links -->
                        <li class="nav-item">
                            <a class="nav-link link-secondary" href="/index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link-secondary" href="/register">Registration</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link-secondary" href="/login">Login</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.user != null}">

                        <!-- Display logout link -->
                        <li class="nav-item">
                            <a class="nav-link link-secondary" href="/index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link-secondary" href="/profile">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link-secondary" href="/logout">Logout</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>