<%-- 
    Document   : Owner
    Created on : Nov 7, 2023, 2:27:24 AM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./assets/css/bass.css">
        <link rel="stylesheet" href="./assets/css/grid.css">
        <link rel="stylesheet" href="./assets/css/styleO.css">
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            body{
                overflow-y: hidden;
            }
        </style>
    </head>
    <body>
        
        <div>
            <h1 class="add-heading">Thêm trọ</h1>
            <p class="add-p">Hãy thêm trọ của bạn để có thể dễ dàng quản lí và tiếp cận đến với mọi người</p>
            <form action="owner" method="post" class="add-motel">
                <input type="text" name="name" class="add-motel-name" placeholder="Nhập tên trọ" required>
                <input type="text" name="address" class="add-motel-address" placeholder="Nhập địa chỉ trọ" required>
                <input type="text" name="describe" class="add-motel-describe" placeholder="Nhập ghi chú trọ" required>
                <input type="file" name="img" class="add-motel-img" required>
                <input type="submit" value="Thêm trọ" class="input-submit">
            </form> 
        </div>
    </body>
</html>
