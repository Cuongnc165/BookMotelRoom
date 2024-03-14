<%-- 
    Document   : newPassword
    Created on : Oct 30, 2023, 3:16:32 AM
    Author     : MM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./assets/css/bass.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                font-family: 'Montserrat', sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            .newpass-container{
                background: linear-gradient(to right, #e0cfcf, #daa282);
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .newpass-card{
                background-color: #fff;
                box-sizing: border-box;
                box-shadow: 0 3px 10px 0 rgba(0,0,0,.14);
                border-radius: 8px;
                overflow: hidden;
                width: 500px;
                min-height: 275px;
                border-radius: 24px;
            }
            h1{
                font-weight: 100;
                font-size: 26px;
                text-transform: uppercase;
                margin: 36px 0 20px;
                text-align: center;
            }
            #new-pass{
                flex: 1;
                font-size: 1.4rem;
                outline: none;
                border: none;
                border-bottom: 1px solid var(--primary-color);
                height: 40px;
                margin: 20px 0px;
                display: block;
                padding: 0px 8px;

            }
            #new-pass:focus{
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
                margin: 30px auto 30px;
                display: block;
                height: 40px;
                border-radius: 8px;
            }
            span{
                padding: 14px;
                justify-content: center;
                align-items: center;
                display: flex;
                font-size: 2.6rem;
            }
            .new-pass{
                margin: 0 76px;
                align-items: center;
                display: flex;
            }
            span i{
                color: var(--primary-color);
            }
            .error{
                font-size: 1.4rem;
                color: var(--primary-color);
                text-align: center;
                margin: 16px 0 0;
            }

        </style>
    </head>
    <body>
        <div class="newpass-container">
            <form action="newPassword" method="POST" class="newpass-card">
                <h1> Nhập mật khẩu mới</h1>
                <h3 class="error">${requestScope.error}</h3>
                <div class="new-pass">
                    <span><i class="fa-solid fa-lock"></i></span>
                    <input id="new-pass" placeholder="Nhập mật khẩu mới" required type="password" name="pass1" pattern="^(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự và một ký tự đặc biệt (@$!%*?&)" />
                </div>  
                <div class="new-pass">
                    <span><i class="fa-solid fa-lock"></i></span>
                    <input id="new-pass" placeholder="Nhập lại mật khẩu mới" required type="password" name="pass2" pattern="^(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự và một ký tự đặc biệt (@$!%*?&)"/>
                </div>

                <button type="submit">Đặt lại mật khẩu</button>
            </form>
        </div>
    </body>
</html>
