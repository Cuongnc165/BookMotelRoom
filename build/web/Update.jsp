<%-- 
    Document   : Update
    Created on : Nov 9, 2023, 9:37:48 PM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./assets/css/bass.css">
        <link rel="stylesheet" href="./assets/css/grid.css">
        <link rel="stylesheet" href="./assets/css/main.css">
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
        <style>
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
            .room-detail-item-right input{
                border: none;
                outline: none;
                border-bottom: 2px solid var(--primary-color);
                background-color: #eaeaea;
            }
            .update-submit{
                margin: 24px auto;
                display: block;
                background-color: black;
                color: white;
                height: 40px;
                width: 120px;
                border: none;
                text-transform: uppercase;
                transition: color,background-color 0.4s ease;
                cursor: pointer;
            }
            .update-submit:hover{
                background-color: var(--primary-color);
                color: black;
            }
            .back-add{
                top: 8%;
                position: absolute;
                margin-left: 11%;
            }
            .back-add a{
                display: block
            }
            .back-add a i {
                font-size: 3rem;
                color: var(--primary-color);
            }
        </style>
    </head>
    <body>
        <c:set value="${requestScope.room}" var="r">
        </c:set>
        <c:set value="${requestScope.status}" var="s">
        </c:set>
        <div class="back-add">
            <a href="update?roomId=${r.room_id}&status=${s}">
                <i class="fa-solid fa-left-long"></i>
            </a>
        </div>
        <div class="owner-log">
            <a href="logout">Đăng xuất</a>
        </div>
        <div class="detail-update wide grid">
            <h1 class="room-detail-heading">Cập nhật phòng ${r.room_number}</h1>
            <form action="updater" method="post">
                <ul class="room-detail">
                    <li class="room-detail-item">
                        <span class="room-detail-item-left">Số Phòng</span>
                        <span class="room-detail-item-right"><input type="number" name="number" value="${r.room_number}" required></span>
                    </li>
                    <li class="room-detail-item">
                        <span class="room-detail-item-left">Giá Phòng</span>
                        <span class="room-detail-item-right"><input type="number" name="price" value="${r.room_price}" required></span>
                    </li>
                    <li class="room-detail-item">
                        <span class="room-detail-item-left">Địa chỉ</span>
                        <span class="room-detail-item-right"><input type="text" name="des" value="${r.room_describe}" required></span>
                    </li>
                    <li class="room-detail-item">
                        <span class="room-detail-item-left">Số người ở tối đa</span>
                        <span class="room-detail-item-right"><input type="number" name="max" value="${r.quantity_max}" required></span>
                    </li>
                </ul>
                <input type="hidden" name="id" value="${r.room_id}"/>
                <input type="hidden" name="status" value="${s}"/>
                <input type="submit" class="update-submit" value="Cập Nhật"/>
            </form>

    </body>
</html>
