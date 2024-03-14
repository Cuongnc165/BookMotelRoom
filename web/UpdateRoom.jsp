<%-- 
    Document   : UpdateRoom
    Created on : Nov 9, 2023, 3:08:00 AM
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
            .update-delete-room{
                margin-top: 32px;
                justify-content: space-evenly;
                display: flex;
            }
            .update-button,.delete-button{
                font-family: 'Cormorant Garamond';
                font-size: 1.6rem;
                text-transform: uppercase;
                line-height: 46px;
                text-align: center;
                color: white;
                height: 46px;
                display: block;
                text-decoration: none;
                background-color: black;
                width: 140px;
                transition: color,background-color 0.4s ease;
            }
            .delete-button{
                background-color: var(--primary-color);
                color: black;
                transition: color,background-color 0.4s ease;
            }
            .update-button:hover{
                background-color: #007f00;
                color: white;
            }
            .delete-button:hover{
                background-color: red;
                color: white;
            }
            .success-update{
                text-align: center;
                color: var(--primary-color);
                font-size: 1.8rem;
                text-transform: uppercase;
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
        <div class="back-add">
            <a href="addroom">
                <i class="fa-solid fa-left-long"></i>
            </a>
        </div>
        <div class="owner-log">
            <a href="logout">Đăng xuất</a>
        </div>
        <c:set value="${requestScope.itemR}" var="r">
        </c:set>
        <c:set value="${requestScope.status}" var="s">
        </c:set>
        <div class="detail-update wide grid">
            <h1 class="room-detail-heading">Thông tin phòng</h1>
            <h2 class="success-update">${requestScope['success-update']}</h2>
            <ul class="room-detail">
                <li class="room-detail-item">
                    <span class="room-detail-item-left">Số Phòng</span>
                    <span class="room-detail-item-right">${r.room_number}</span>
                </li>
                <li class="room-detail-item">
                    <span class="room-detail-item-left">Giá Phòng</span>
                    <span class="room-detail-item-right">${r.room_price}</span>
                </li>
                <li class="room-detail-item">
                    <span class="room-detail-item-left">Địa chỉ</span>
                    <span class="room-detail-item-right">${r.motel.motel_address}</span>
                </li>
                <c:if test="${s == '1'}">
                    <li class="room-detail-item">
                        <span class="room-detail-item-left">Trạng Thái</span>
                        <span class="room-detail-item-right">Đã được thuê bởi ${r.renter.renter_name}</span>
                    </li>
                </c:if>
                <c:if test="${s == '0'}">
                    <li class="room-detail-item">
                        <span class="room-detail-item-left">Trạng Thái</span>
                        <span class="room-detail-item-right">Chưa có người thuê</span>
                    </li>
                </c:if>
            </ul>
            <div class="update-delete-room">
                <a href="updater?id=${r.room_id}&status=${s}" class="update-button">Cập Nhật</a>
                <a href="deleter?id=${r.room_id}" class="delete-button">Xóa Phòng</a>
            </div>
        </div>


    </body>
</html>
