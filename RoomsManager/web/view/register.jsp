<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Register Form</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mainstyle.css">
    </head>
    <body>
    <body>
        <form action="../UserControllers" method="POST">
            <div class="login">
                <div class="login-screen">
                    <div class="app-title">
                        <h1>Register</h1>
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

                        <div class="control-group">
                            <input type="password" class="login-field" value="" placeholder="Confirm password" name="confirm" id="login-confirmPass">
                            <label class="login-field-icon fui-lock" for="login-pass"></label>
                        </div>

                        <input type="submit" class="btn btn-primary btn-large btn-block" name="action" value="Register"></input>

                    </div>
                </div>
            </div>
        </form>
    </body>


</body>
</html>
