

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="./assets/css/bass.css"/>
        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
        <script
        src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

        <style type="text/css">
            *{
                font-family: 'Montserrat', sans-serif;
            }
            .form-gap {
                height: 25vh;
            }
            .primary-shadow:focus{
                box-shadow: 0 0 10px var(--primary-color);
                border: 1px solid var(--primary-color);
            }
            body{
                background: linear-gradient(to right, #e0cfcf, #daa282);
                height: 100vh;
            }
        </style>
    </head>

    <body>
        <div class="form-gap"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default" style="border-radius: 24px;border-color: none">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3>
                                    <i class="fa fa-lock fa-4x"></i>
                                </h3>
                                <h2 class="text-center">Nhập OTP</h2>
                                <%
                                if(request.getAttribute("message")!=null)
                                    {
                                out.print("<p class='text-danger ml-1'>"+request.getAttribute("message")+"</p>");
                                    }	  
                                %>
                                <div class="panel-body">
                                    <form id="register-form" action="ValidateOtp" role="form" autocomplete="off" class="form" method="post">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-envelope color-blue"></i>
                                                </span> 
                                                <input id="opt" name="otp" placeholder="Enter OTP" class="form-control primary-shadow" type="text" required="required">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Đặt lại mật khẩu" type="submit" style="background-color: var(--primary-color);border: none;">
                                        </div>
                                        <input type="hidden" class="hide" name="token" id="token" value="">
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>