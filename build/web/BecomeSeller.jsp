<%-- 
    Document   : BecomeSeller
    Created on : Nov 1, 2023, 4:53:34 PM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/main.css"/>
        <link rel="stylesheet" href="./assets/css/bass.css"/>
        <link rel="stylesheet" href="./assets/css/grid.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100&display=swap" rel="stylesheet">
        <title>JSP Page</title>
        <style>
            .account-logo{
                object-fit: cover;
                display: block;
                width: 20px;
                height: 20px;
                border-radius: 50%;
                margin: 0 6px -1px 0;
                border: 2px solid #ccc;
            }
            .header__navbar-user{
                display: flex;
                align-items: center;
            }
            .header{
                height: 100px;
                border-bottom: 2px solid var(--primary-color);
            }
            .navbar-list-item a{
                color: black;
                text-shadow:none;
            }
            .navbar-list-item a:hover{
                opacity: 0.8;
            }
            .navbar-list-item a::after{
                background-color: #000;
            }
            .header__navbar-user a{
                color: white;
            }
            .header__navbar-user .account-name{
                color: black;
            }
            .header__navbar-user-menu .header__navbar-user-item a::after {
                background-color: var(--primary-color);
            }
            .header_text{
                top: 40%;
                text-shadow: none;
            }
            .header_text-title{
                color: black;
                font-weight: 500;
            }
            .header_text-intro{
                text-shadow: none;
            }
            .becomeS{
                font-weight: 600;
                font-family: 'Raleway', sans-serif;
                font-size: 2rem;
                text-transform: uppercase;
                border-radius: 8px;
                border: none;
                background-color: black;
                height: 48px;
                width: 560px;
                display: block;
                margin: 0 auto;
                color: white;
                cursor: pointer;
                transition: background-color,color 0.8s ease;
            }
            .becomeS:hover{
                background-color: var(--primary-color);
                color: black;
            }
            
            .footer{
                top: 120%;
                left: 0;
                right: 0;
                position: absolute;
            }

        </style>
    </head>
    <body>
        <div class="header">
            <div class="grid wide menu">
                <nav class="navbar">
                    <ul class="navbar-list">
                        <li class="navbar-list-item">
                            <a href="home">Trang chủ</a>
                        </li>
                        <li class="navbar-list-item">
                            <a href="search">Tìm trọ</a>                   
                        </li>
                    </ul>
                    <a href="home" class="navbar_logo">
                        <img src="./assets/img/logo-dark.png" alt="anh logo"/>
                    </a>
                    <ul class="navbar-list">
                        <li class="navbar-list-item">
                            <a href="#">Môi giới</a>
                        </li>
                        <c:if test="${sessionScope.Account==null}">
                            <li class="navbar-list-item">
                                <a href="login.jsp">Đăng nhập</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.Account!=null}">
                            <li class="navbar-list-item header__navbar-user">
                                <img src="./assets/img/account-logo.jpg" class="account-logo" alt="123"/>
                                <a href="#" class="account-name">${sessionScope.Account.name}</a>
                                <ul class="header__navbar-user-menu">
                                    <li class="header__navbar-user-item">
                                        <a href="" class="header__navbar-user-item-link">Đơn đặt trọ</a>
                                    </li>
                                    <li class="header__navbar-user-item header__navbar-user-item--separate">
                                        <a href="logout" class="header__navbar-user-item-link">Đăng xuất</a>
                                    </li>
                                </ul>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="header_text">
            <h1 class="header_text-title">BM NCC</h1>
            <p class="header_text-intro">trở thành chủ trọ để có thể có thể dễ dàng tiếp cận người thuê</p>
        </div>

        <form action="owner" class="owner">
            <h1 class="owner-heading">Đăng Ký để trở thành chủ trọ</h1>
            <input type="text" placeholder="Nhập tên" name="name" class="name-owner" required>
            <input type="email" placeholder="Nhập email" name="email" class="email-owner" required>
            <input type="text" placeholder="Nhập số điện thoại" name="number" class="number-owner" required pattern="[0-9]{3}[0-9]{4}[0-9]{3}" title="Vui lòng nhập đúng số điện thoại">
            <button type="submit" class="becomeS">Trở thành chủ trọ</button>
        </form>
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
