<%-- 
    Document   : AddRoom
    Created on : Nov 8, 2023, 12:25:01 AM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="./assets/css/bass.css">
        <link rel="stylesheet" href="./assets/css/grid.css">
        <link rel="stylesheet" href="./assets/css/styleO.css">
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
            body{
                overflow-x: hidden;
                overflow-y: auto;
            }
            .add-p{
                width: 100%;
            }
            .add-motel{
                width: 100%;
            }
            .add-right{
                margin-left: 170px;
            }
            .product-detail-room-list{
                margin-top: 120px;
            }
            .add-motel .add-motel-img{
                margin-top: 0;
                color: black;
                border-bottom: 2px solid var(--primary-color);
            }
            .product-detail-room-item{
                margin-top: 14px;
            }
            .addRoom-heading{
                color: #a2a2a2;
                text-transform: uppercase;
                font-family: 'Cormorant Garamond';
                font-size: 5rem;
                margin-top: 40px;
                text-align: center
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
            .product-detail-room-item-box .room-done{
                background-color: red;
                color: black;
            }
            .product-detail-room-item-box .room-done:hover{
                background-color: red;
                color: black;
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


        <div class="grid wide main">
            <h1 class="addRoom-heading">${requestScope.motel.motel_name}</h1>
            <div class="addR row">
                <div class="add-left col l-6">
                    <ul class="product-detail-room-list">
                        <h1 class="product-detail-room-list-heading">Danh sách phòng</h1>
                        <li class="product-detail-room-item">
                            <c:forEach items="${requestScope.rNum}" var="c">
                                <c:if test="${c.renter != null}">
                                    <div class="product-detail-room-item-box">
                                        <a href="update?roomId=${c.room_id}&status=1" class="room-done">${c.room_number}</a>
                                    </div>
                                </c:if>
                                <c:if test="${c.renter == null}">
                                    <div class="product-detail-room-item-box">
                                        <a href="update?roomId=${c.room_id}&status=0">${c.room_number}</a>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </li>
                    </ul>
                </div>


                <div class="add-right col l-4">
                    <h1 class="add-heading">Thêm phòng</h1>
                    <h3 class="add-motel-erorr">${sessionScope['success-add-motel']}</h3>
                    <form action="addroom" method="post" class="add-motel">
                        <input type="number" name="r_num" class="add-motel-name" placeholder="Nhập số phòng" required>
                        <input type="text" name="r_price" class="add-motel-address" placeholder="Nhập giá phòng" required>
                        <input type="text" name="r_describe" class="add-motel-describe" placeholder="Nhập chú thích về phòng" required>
                        <input type="number" name="max" class="add-motel-img" placeholder="Nhập số người tối đa" required>

                        <label for="img-1">Chọn ảnh 1: </label>
                        <input type="file" id="img-1" name="img1" class="add-motel-img" required">
                        <label for="img-2">Chọn ảnh 2: </label>
                        <input type="file" id="img-2" name="img2" class="add-motel-img" >
                        <label for="img-3">Chọn ảnh 3: </label>
                        <input type="file" id="img-3" name="img3" class="add-motel-img" >
                        <label for="img-4">Chọn ảnh 4: </label>
                        <input type="file" id="img-4" name="img4" class="add-motel-img" >
                        <label for="img-5">Chọn ảnh 5: </label>
                        <input type="file" id="img-5" name="img5" class="add-motel-img" >
                        <input type="submit" value="Thêm phòng" class="input-submit">
                    </form> 
                </div>


            </div>
        </div>

        <script src="./assets/js/scriptO.js"></script>
    </body>
</html>
