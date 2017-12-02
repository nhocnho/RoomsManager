<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Login Form</title>

        <style>
            * {
                box-sizing: border-box;
            }

            *:focus {
                outline: none;
            }
            body {
                font-family: Arial;
                background-color: #3498DB;
                padding: 50px;
            }
            .login {
                margin: 20px auto;
                width: 300px;
            }
            .login-screen {
                background-color: #FFF;
                padding: 20px;
                border-radius: 5px
            }

            .app-title {
                text-align: center;
                color: #777;
            }

            .login-form {
                text-align: center;
            }
            .control-group {
                margin-bottom: 10px;
            }

            input {
                text-align: center;
                background-color: #ECF0F1;
                border: 2px solid transparent;
                border-radius: 3px;
                font-size: 16px;
                font-weight: 200;
                padding: 10px 0;
                width: 250px;
                transition: border .5s;
            }

            input:focus {
                border: 2px solid #3498DB;
                box-shadow: none;
            }

            .btn {
                border: 2px solid transparent;
                background: #3498DB;
                color: #ffffff;
                font-size: 16px;
                line-height: 25px;
                padding: 10px 0;
                text-decoration: none;
                text-shadow: none;
                border-radius: 3px;
                box-shadow: none;
                transition: 0.25s;
                display: block;
                width: 250px;
                margin: 0 auto;
            }

            .btn:hover {
                background-color: #2980B9;
            }

            .login-link {
                font-size: 12px;
                color: #444;
                display: block;
                margin-top: 12px;
            }
        </style>




    </head>

    <body>
    <body>
        <form action="UserControllers">
        <div class="login">
            <div class="login-screen">
                <div class="app-title">
                    <h1>Login</h1>
                </div>

                <div class="login-form">
                    <div class="control-group">
                        <input type="text" class="login-field" value="" placeholder="username" name="username" id="login-name">
                        <label class="login-field-icon fui-user" for="login-name"></label>
                    </div>

                    <div class="control-group">
                        <input type="password" class="login-field" value="" placeholder="password" name="password" id="login-pass">
                        <label class="login-field-icon fui-lock" for="login-pass"></label>
                    </div>

                    <input type="submit" class="btn btn-primary btn-large btn-block" name="action" value="Login"></input>
                    <a class="login-link" href="#">Lost your password?</a>
                    <a class="btn btn-primary btn-large btn-block" href="view/register.jsp" >Register</a>
                </div>
            </div>
        </div>
        </form>
    </body>


</body>
</html>
