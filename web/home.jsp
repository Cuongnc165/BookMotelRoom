<%-- 
    Document   : home
    Created on : Oct 21, 2023, 4:08:56 PM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./assets/css/main.css"/>
        <link rel="stylesheet" href="./assets/css/bass.css"/>
        <link rel="stylesheet" href="./assets/css/grid.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>

        <header class="header">
            <jsp:include page="./menu.jsp"/>
            <div class="header_text">
                <h1 class="header_text-title">BM NCC</h1>
                <p class="header_text-intro">một giải pháp hiện đại dành đến cho mọi người</p>
            </div>
        </header>
        <div class="home_product grid wide">
            <div class="row app_product">

                <c:forEach items="${requestScope.motel}" var="c">
                    <div class="col l-4">
                        <a href="productDetail?id=${c.motel_id}" class="home_product-item">
                            <div class="img_wrap">
                                <img class="home_product-item_img" alt="anh" src="${c.motel_img}"/>
                            </div>

                            <h4 class="home_product-item_name">
                                ${c.motel_name}
                            </h4>
                            <p class="home_product-item_address">
                                ${c.motel_address}
                            </p>
                            <div class="home_product-item_price">
                                ${c.motel_describe}
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
        <footer class="footer">
            <div class="grid wide">
                <div class="row">
                    <div class="col l-3">
                        <h3 class="footer_heading">Liên hệ</h3>
                        <ul class="footer-list">
                            <li class="footer-item">
                                <a href="" class="footer-item_link">Một trải nghiệm mới</a>
                            </li>
                            <li class="footer-item">
                                <span>A:</span>
                                <a href="https://maps.app.goo.gl/raYnoGYKSbAABbW16" class="footer-item_link">BM NCC Company</a>
                            </li>
                            <li class="footer-item">
                                <span>T:</span>
                                <a href="tel:0123456789" class="footer-item_link">0123456789</a>

                            </li>
                        </ul>
                    </div>
                    <div class="col l-3">
                        <h3 class="footer_heading">Liên hệ</h3>
                        <ul class="footer-list">
                            <li class="footer-item">
                                <a href="" class="footer-item_link">Một trải nghiệm mới</a>
                            </li>
                            <li class="footer-item">
                                <span>A:</span>
                                <a href="https://maps.app.goo.gl/raYnoGYKSbAABbW16" class="footer-item_link">BM NCC Company</a>
                            </li>
                            <li class="footer-item">
                                <span>T:</span>
                                <a href="tel:0123456789" class="footer-item_link">0123456789</a>

                            </li>
                        </ul>
                    </div>
                    <div class="col l-3">
                        <h3 class="footer_heading">Liên hệ</h3>
                        <ul class="footer-list">
                            <li class="footer-item">
                                <a href="" class="footer-item_link">Một trải nghiệm mới</a>
                            </li>
                            <li class="footer-item">
                                <span>A:</span>
                                <a href="https://maps.app.goo.gl/raYnoGYKSbAABbW16" class="footer-item_link">BM NCC Company</a>
                            </li>
                            <li class="footer-item">
                                <span>T:</span>
                                <a href="tel:0123456789" class="footer-item_link">0123456789</a>

                            </li>
                        </ul>
                    </div>
                    <div class="col l-3">
                        <h3 class="footer_heading">Liên hệ</h3>
                        <ul class="footer-list">
                            <li class="footer-item">
                                <a href="" class="footer-item_link">Một trải nghiệm mới</a>
                            </li>
                            <li class="footer-item">
                                <span>A:</span>
                                <a href="https://maps.app.goo.gl/raYnoGYKSbAABbW16" class="footer-item_link">BM NCC Company</a>
                            </li>
                            <li class="footer-item">
                                <span>T:</span>
                                <a href="tel:0123456789" class="footer-item_link">0123456789</a>

                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
