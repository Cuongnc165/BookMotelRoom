<%-- 
    Document   : product-detail
    Created on : Oct 25, 2023, 5:00:14 PM
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
            .product-detail-room-item-box .room-done{
                background-color: red;
                color: black;
                cursor: not-allowed;
                pointer-events: none;
            }
            .product-detail-room-item-box .room-done:hover{
                background-color: red;
                color: black;
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
                            <a href="BecomeSeller.jsp">Đăng Ký chủ trọ</a>                   
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

        <div class="grid wide product">
            <div class="star">
                <img src="./assets/img/star.png" alt="alt"/>
            </div>
            <c:set value="${requestScope.mDetail}" var="c">
            </c:set>
            <h1 class="product-heading">${c.motel_name}</h1>
            <img src="${c.motel_img}" alt="alt" class="product-img"/>
            <div class="product-detail row">
                <div class="product-detail-left col l-7">
                    <div class="product-detail-des--border">
                        <svg class="rectangle" rx="4">
                        <rect class="rectangle-border" rx="4"></rect>
                        </svg>
                        <p class="product-detail-des">
                            "${c.motel_describe}"
                        </p>
                    </div>
                    <div class="product-detail-img row">
                        <img src="${c.motel_img}" alt="alt" class="col l-5"/>
                        <img src="${c.motel_img}" alt="alt" class="col l-7"/>
                        <img src="${c.motel_img}" alt="alt" class="col l-6"/>
                        <img src="${c.motel_img}" alt="alt" class="col l-6"/>
                    </div>

                </div>



                <div class="product-detail-right col l-5">
                    <ul class="product-detail-room-list">
                        <h1 class="product-detail-room-list-heading">Danh sách phòng</h1>
                        <li class="product-detail-room-item">
                            <c:forEach items="${requestScope.rNum}" var="c">
                                <c:if test="${c.renter != null}">
                                    <div class="product-detail-room-item-box">
                                        <a href="room?roomId=${c.room_id}" class="room-done">${c.room_number}</a>
                                    </div>
                                </c:if>
                                <c:if test="${c.renter == null}">
                                    <div class="product-detail-room-item-box">
                                        <a href="room?roomId=${c.room_id}">${c.room_number}</a>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </li>
                    </ul>
                </div>
            </div>



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
