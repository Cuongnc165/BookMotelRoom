<%-- 
    Document   : register
    Created on : Oct 29, 2023, 1:20:07 AM
    Author     : MM
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/register.css"/>
        <link rel="stylesheet" href="./assets/css/main.css"/>
        <link rel="stylesheet" href="./assets/css/bass.css"/>
        <link rel="stylesheet" href="./assets/css/grid.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container sign-up">
                <form action="register" method="post">
                    <h1>Đăng ký</h1>
                    <div class="social-icons">
                        <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                    </div>
                    <span>Hoặc sử dụng email để đăng ký</span>
                    <c:choose>
                        <c:when test="${not empty requestScope['Register-error']}">
                            <h3 class="error-mess" style="color: var(--primary-color);margin: 12px 0;">${requestScope['Register-error']}</h3>
                        </c:when>
                        <c:when test="${not empty requestScope['Register-success']}">
                            <h3 class="success-mess" style="color: var(--primary-color);margin: 12px 0;">${requestScope['Register-success']}</h3>
                        </c:when>
                    </c:choose>


                    <input type="text" placeholder="Name" name="sign-up name" required>
                    <input type="email" placeholder="Email" name="sign-up email" required>
                    <input type="password" placeholder="Password" name="sign-up pass" required pattern="^(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự và một ký tự đặc biệt (@$!%*?&)">
                    <button type="submit">Đăng Ký</button>
                </form>
            </div>
            <div class="form-container sign-in">
                <form action="login" method="post">
                    <h1>Đăng nhập</h1>
                    <div class="social-icons">
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:9999/BookMotelRoom/LoginGoogleHandler&response_type=code&client_id=947248448865-8gkl6fctv8hlhrrv89e80rv3d5o9nvno.apps.googleusercontent.com&approval_prompt=force" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                    </div>
                    <span>Hoặc sử dụng email và password</span>
                    <input type="email" placeholder="Email" name="sign-in email" value="${cookie.cemail.value}" required>
                    <input type="password" placeholder="Password" name="sign-in pass" value="${cookie.cpass.value}" required pattern="^(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự và một ký tự đặc biệt (@$!%*?&)">
                    <div class="remember-wrap">
                        <input type="checkbox" id="remember" ${cookie.crem != null?'checked':''} name="rem" value="ON"/>
                        <label for="remember" class="remember-input"></label>
                        <h3 class="remember">Ghi nhớ đăng nhập</h3>
                    </div>
                    <button type="submit">Đăng Nhập</button>
                    <a href="forgotPassword.jsp" class="forger">Quên mật khẩu?</a>
                </form>
            </div>
            <div class="toggle-container">
                <div class="toggle">
                    <div class="toggle-panel toggle-left">
                        <h1>Chào mừng trở lại!</h1>
                        <p>Nhập thông tin cá nhân của bạn để sử dụng tất cả các tính năng của trang Web</p>
                        <button class="hidden" id="login">Đăng Nhập</button>
                    </div>
                    <div class="toggle-panel toggle-right">
                        <h1>Chào, Bạn!</h1>
                        <p>Đăng ký với thông tin cá nhân của bạn để sử dụng tất cả các tính năng của trang Web</p>
                        <button class="hidden" id="register">Đăng Ký</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            const container = document.getElementById('container');
            const registerBtn = document.getElementById('register');
            const loginBtn = document.getElementById('login');

            loginBtn.addEventListener('click', () => {
                container.classList.add("active");
            });

            registerBtn.addEventListener('click', () => {
                container.classList.remove("active");
            });
        </script>
    </body>
</html>
