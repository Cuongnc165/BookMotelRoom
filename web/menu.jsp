<%-- 
    Document   : menu
    Created on : Oct 21, 2023, 4:14:54 PM
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
        <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100&display=swap" rel="stylesheet">
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
        </style>
    </head>
    <body>
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
                    <img src="./assets/img/logo.png" alt="anh logo"/>
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
        
        



    </body>
</html>
