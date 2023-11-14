<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Art-Lister!"/>
    </jsp:include>

</head>
<body>
<div class="page-wrapper position-relative">
    <div class="black-overlay"></div>
    <div class="video-wrapper">
        <video autoplay loop muted playsinline class="back-video">
            <source src="media/pexels_videos_1970039%20(1080p).mp4" type="video/mp4">
        </video>
    </div>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="container flex-grow-1 d-flex flex-column justify-content-center hero">
        <div class="row">
            <div class="col d-flex flex-column align-items-center justify-content-start">
                <h1>Welcome to the Art-Lister!</h1>
                <p>Where creativity meets curation – your gateway to a world of inspired expression.</p>
<%--                <p>Art-Lister is a versatile web application for artists, enabling them to showcase their work and easily monetize it through commissioned art sales. The platform allows artists to exhibit a wide range of art, from paintings to digital pieces, and simplifies the commission process, connecting artists with clients to securely facilitate custom art sales, creating a space where creativity meets financial opportunity.</p>--%>
                <button type="button" class="Btn btn-block btn-sm btn-outline-light rounded-pill"><a class="navbar-brand" href="/ads/index">View Ads</a></button>
            </div>
        </div>
    </div>
</div>

</body>
</html>


