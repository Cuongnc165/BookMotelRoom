<%-- 
    Document   : success
    Created on : Oct 30, 2023, 11:44:53 PM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="./assets/css/bass.css"/>
        <link rel="stylesheet" href="./assets/css/grid.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                font-family: 'Montserrat', sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            h1{
                color: var(--primary-color);
                font-weight: 100;
                font-size: 1.8rem;
                text-transform: uppercase;
                margin-top: 36px;
                text-align: center;
            }
            button{
                cursor: pointer;
                font-size: 1.6rem;
                text-transform: uppercase;
                border: none;
                background: var(--primary-color);
                color: white;
                width: 70%;
                margin: auto;
                display: block;
                height: 40px;
                border-radius: 8px;
            }
            .countdown-container{
                background: linear-gradient(to right, #e0cfcf, #daa282);
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .countdown-card{
                display: flex;
                flex-direction: column;
                background-color: #fff;
                box-sizing: border-box;
                box-shadow: 0 3px 10px 0 rgba(0,0,0,.14);
                border-radius: 24px;
                overflow: hidden;
                width: 500px;
                min-height: 275px;
            }
            #countdown{
                opacity: 0.7;
                margin-top: 50px;
                font-size: 1.4rem;
                text-align: center;
                display: block;
            }
            a{
                color: var(--primary-color);
                text-decoration: none;
                font-size: 1.4rem;
                font-weight: 600;
                text-transform: uppercase;
            }
        </style>
    </head>

    <body>
        <script>
            function countDown() {
                var count = 10;
                var countdownElement = document.getElementById("countdown");
                function updateCountdown() {
                    countdownElement.innerHTML = "Tự động chuyển đến trang <a href='login.jsp'>Đăng Nhập</a> sau " + count + " giây";
                }
                function excuteCountdown() {
                    updateCountdown();
                    var countdownInterval = setInterval(
                            function () {
                                count--;
                                updateCountdown();
                                if (count <= 0) {
                                    clearInterval(countdownInterval);
                                    window.location.href = "login.jsp";
                                }
                            }, 1000);
                }
                excuteCountdown();
            }
        </script>
        <div class="countdown-container">
            <div class="countdown-card">
                <h1>Mật khẩu đã được đặt lại thành công</h1>
                <p id="countdown"></p>
                <button onclick="window.location.href = 'login.jsp'">OK</button>
            </div>

        </div>
        <script>
            window.onload = countDown;
        </script>
    </body>
</html>
