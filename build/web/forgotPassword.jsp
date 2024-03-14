<%-- 
    Document   : forgotPassword
    Created on : Oct 29, 2023, 11:58:04 PM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="./assets/css/bass.css"/>
        <link rel="stylesheet" href="./assets/css/grid.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                font-family: 'Montserrat', sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            .forgot-card{
                background-color: #fff;
                box-sizing: border-box;
                box-shadow: 0 3px 10px 0 rgba(0,0,0,.14);
                border-radius: 24px;
                overflow: hidden;
                width: 500px;
                min-height: 275px;
            }
            .forgot-container{
                background: linear-gradient(to right, #e0cfcf, #daa282);
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .fotgot-email{
                width: 100%;
            }
            h1{
                width: 70%;
                font-weight: 100;
                font-size: 26px;
                text-transform: uppercase;
                margin-top: 36px;
                text-align: center;
            }
            #forgot-email{
                text-transform: uppercase;
                font-size: 1.4rem;
                outline: none;
                border: none;
                border-bottom: 1px solid var(--primary-color);
                height: 40px;
                margin: 48px auto 36px;
                display: block;
                width: 70%;
                padding: 0px 8px;

            }
            #forgot-email:focus{
                border-bottom: 2.5px solid var(--primary-color);
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
                margin-bottom: 58px;
                border-radius: 8px;
            }
            .error{
                font-size: 1.4rem;
                color: var(--primary-color);
                text-align: center;
                margin: 16px 0 0;
            }
            span{
                color: var(--primary-color);
                padding-left: 28px;
                width: 15%;
                margin-top: 36px;
                font-size: 2rem;
                cursor: pointer;
            }
            .back{
                display: flex;
            }


        </style>
    </head>

    <body>
        <div class="forgot-container">
            <form action="forgotPassword" method="POST" class="forgot-card">
                <div class="back">
                    <span onclick="window.location.href = 'login.jsp'">
                        <i class="fa-solid fa-arrow-left"></i>
                    </span>
                    <h1>Đặt lại mật khẩu</h1>
                </div>
                <h3 class="error">${requestScope['error-email']}</h3>
                <input id="forgot-email" placeholder="Vui lòng nhập Email" required type="email" name="email"/>
                <button type="submit">Tiếp theo</button>
            </form>
        </div>
    </body>
</html>
