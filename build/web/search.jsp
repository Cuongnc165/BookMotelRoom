<%-- 
    Document   : search
    Created on : Nov 5, 2023, 1:51:07 AM
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
            .home_product-item_price {
                text-align: center;
                height: 0;
                padding-bottom: 40px;
                font-size: 1rem;
            }
            .room-num{
                font-size: 3.2rem;
                padding-bottom: 16px;
            }
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
                                        <a class="header__navbar-user-item-link" href="">Tài khoản của tôi</a>
                                    </li>
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

        <div class="home_product grid wide">
            <div class="search-box">
                <form action="search">
                    <div class="search-box-name">
                        <input type="text" name="search-name" placeholder="Nhập thông tin bạn cần tìm"/>
                    </div>
                    <div class="search-box-price">
                        <input type="text" name="price-from" placeholder="Giá từ"/>
                        <input type="text" name="price-to"  placeholder="đến" />
                    </div>
                    <div class="search-box-address">
                        <input type="text" name="search-address" placeholder="Nhập địa chỉ cần tìm"/>
                    </div>
                    <input class="search-button" type="submit" value="Tìm kiếm"/>
                </form>
            </div>

            <div class="row app_product">
                <c:forEach items="${requestScope.items}" var="c">
                    <c:if test="${c.renter == null}">
                        <div class="col l-4">
                            <a href="room?roomId=${c.room_id}" class="home_product-item">
                                <div class="img_wrap">
                                    <img class="home_product-item_img" alt="anh" src="${c.motel.motel_img}"/>
                                </div>
                                <h4 class="home_product-item_name">
                                    <div class="room-num">
                                        ${c.room_number}
                                    </div>
                                    ${c.motel.motel_name}
                                </h4>
                                <p class="home_product-item_address">
                                    ${c.room_price}
                                </p>
                                <div class="home_product-item_price">
                                    ${c.motel.motel_address}
                                </div>
                            </a>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
        </div>


    </body>
</html>
