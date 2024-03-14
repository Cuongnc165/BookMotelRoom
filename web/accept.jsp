<%-- 
    Document   : accept
    Created on : Nov 8, 2023, 5:25:05 AM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="./assets/css/styleO.css"/>
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
        <title>JSP Page</title>
        <style>
            .box-check-heading{
                font-family: 'Cormorant Garamond';
                margin-top: 60px;
                text-transform: uppercase;
                font-size: 4.2rem;
                text-align: center;
            }
            .box-check-item-name,.box-check-item-number-room{
                padding-top: 30px;
                font-size: 2.8rem;
                text-align: center;
                color: wheat;
            }
            .box-check-color{
                background-color: black;
                border-radius: 8px;
                margin-top: 28px
            }
            .owner-log{
                margin-top: 26px;
                margin-left: 75%;
                height: 30px;
                width: 90px;
                background-color: black;
                transition: background-color 0.4s ease;
            }
            .owner-log:hover{
                background-color: var(--primary-color);
            }
            .owner-log:hover a{
                color: black;
            }
            .owner-log a{
                transition: color 0.4s ease;
                text-transform: uppercase;
                line-height: 30px;
                text-align: center;
                display: block;
                text-decoration: none;
                color: white;
            }

        </style>
    </head>
    <body>
        <div class="owner-log">
            <a href="logout">Đăng xuất</a>
        </div>
        
        <nav>
            <div class="nav-content">
                <div class="toggle-btn">
                    <i class="fas fa-plus"></i>
                </div>
                <span style="--i:2;">
                    <a href="addroom"><i class="fas fa-home"></i></a>
                </span>

                <span style="--i:4;">
                    <a href="accept"><i class="far fa-bell"></i></a>
                </span>
                
            </div>
        </nav>
        
        

        <div class="grid wide">
            <h1 class="box-check-heading">Danh sách đăng ký thuê trọ</h1>
            <div class="row">
                <c:forEach items="${requestScope.listBill}" var="c">
                    <div class="col l-6 box-check-item">
                        <div class="box-check-color">
                            <h1 class="box-check-item-name">${c.renter.renter_name}</h1>
                            <h2 class="box-check-item-number-room">${c.room.room_number}</h2>
                            <div class="box-check-done">
                                <a href="acceptroom?renterId=${c.renter.renter_id}" class="done">
                                    <i class="fa-solid fa-check"></i>
                                </a>
                                <a href="ignore?renterId=${c.renter.renter_id}" class="not">
                                    <i class="fa-solid fa-x"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </div>

        </div>


        <script src="./assets/js/scriptO.js"></script>

    </body>
</html>
