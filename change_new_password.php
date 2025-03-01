<?php
require 'admin/root.php';
$token = isset($_GET['token']) ? $_GET['token'] : '';

$sql = "SELECT * from forgot_password
    where `token` = '$token'";
$result = mysqli_query($connect, $sql);
if (!(mysqli_num_rows($result) === 1)) {
    header('location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en"> 

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đổi mật khẩu</title>
    <link rel="stylesheet" href="./public/css/rss.css" />
    <link rel="stylesheet" href="./public/css/style.css" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        label.error{
			color: red;
		}
        .h1 {
            flex: 4;
            color: #ffff;

        }

        .sign {
            width: 500px;
            min-height: 500px;
            margin: 0 auto;
            padding-top: 80px;
            background-color: #cce6ff;
        }

        .text-status {
            font-size: 2rem;
            font-weight: 400;
            text-align: center;
            padding: 12px;
        }

        .text-status.text-error {
            color: red;
        }

        .text-status.text-success {
            color: green;
        }

        .sign form {
            max-width: 400px;
            margin: 0 auto;
            padding: 45px 20px;
        }

        .sign form label {
            display: block;
            font-size: 1.7rem;
            padding: 10px;
        }

        .sign form input {
            display: block;
            width: 100%;
            height: 34px;
            outline: none;
            border: none;
            padding-left: 10px;
            background-color: #ffff;

        }

        .sign form button {
            float: right;
            margin-top: 10px;
            padding: 10px;
            outline: none;
            border: none;
            background-color: #1a75ff;
            color: #ffff;
            font-size: 1.5rem;
        }

        .sign form a {
            display: block;
            float: right;
            padding: 10px;
            color: #1a75ff;
            font-size: 1.5rem;
        }

        .Remember {
            display: flex;
            align-items: center;
            margin-top: 12px;
        }

        .Remember span {
            display: inline-block;
            font-size: 1.2rem;
            color: #555;

        }

        .Remember input {
            display: inline-block !important;
            width: 14px !important;
            height: 24px !important;
            margin: 0 6px;
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <!-- dau -->
        <div class="header header-fixed">
            <div class="header-container">
                <header class="header-top">
                    <div class="logo">
                        <a href="index.php">
                            <img src="./public/img/logo.jpg" alt="" class="img">
                        </a>
                    </div>
                    <div class="h1">
                        <h1>Đổi mật khẩu</h1>
                    </div>
                </header>
            </div>
        </div>
        <div class="container">
            <div class="grid_full-width">
                <div class="sign">
                    <form id="form_change_password" action="process_change_password.php" method="post">
                        <input type="hidden" name="token" value="<?php echo $token ?>">
                        <label for="">Mật khẩu mới</label>
                        <input type="password" name="password">
                        <br>
                        <button type="submit">
                            Đổi mật khẩu
                        </button>
                    </form>

                </div>
            </div>
            <div class="footer">
                <div class="grid_full-width">
                    <div class="grid">
                        <div class="row">
                            <div class="col col-4 col-mobi">
                                <div class="logo logo-bottom ml-mobi">
                                    <img src="./public/img/logo.jpg" alt="" class="img">
                                </div>
                                <div class="footer__text ml-mobi">
                                    <p>
                                    <p></p>    
                                    
TN SHOP là một cửa hàng chuyên kinh doanh các sản phẩm điện thoại di động. Cửa hàng cung cấp đa dạng các dòng sản phẩm từ nhiều thương hiệu nổi tiếng như Apple, Samsung, Xiaomi, Oppo và nhiều hãng khác. </p>
                                </div>
                            </div>
                            <div class="col col-4 col-mobi">
                                <div class="footer__about">
                                    <h3>Địa chỉ</h3>
                                </div>
                                <div class="footer__text">
                                    <p>
                                    200 Khuông Việt - Phú Trung - Tân Phú - Hồ Chí Minh
                                    </p>
                                    <p>
                                    300 Khuông Việt - Phú Trung - Tân Phú - Hồ Chí Minh
                                    </p>
                                </div>
                            </div>
                            <div class="col col-4 col-mobi">
                                <div class="footer__about">
                                    <h3>Dịch vụ</h3>
                                </div>
                                <div class="footer__text">
                                    <p>
                                    Bán điện thoại
                                    </p>
                                    <p>
                                    Bảo hành chính hãng, 1 năm
                                    </p>
                                </div>
                            </div>
                            <div class="col col-4 col-mobi">
                                <div class="footer__about">
                                    <h3>Liên hệ</h3>
                                </div>
                                <div class="footer__text">
                                    <p>Điện thoại: <a href="tel:0369124870">0369124870</a></p>
                                    <p>Email: <a href="mailto:tnshop@gmail.com">tnshop@gmail.com</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php include './partials/footer.php' ?>
    </div>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $().ready(function() {
            $("#form_change_password").validate({
                onfocusout: false,
                onkeyup: false,
                onclick: false,
                rules: {
                    "password": {
                        required: true,
                        validatePassword: true,
                        minlength: 6
                    },
                },
                messages: {
                    "password": {
                        required: "Vui lòng nhập mật khẩu của bạn"
                    },
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
            $.validator.addMethod("validatePassword", function(value, element) {
                return this.optional(element) || /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/i.test(value);
            }, "Hãy nhập password từ 6 đến 16 ký tự bao gồm chữ hoa, chữ thường và ít nhất một chữ số");
        });
    </script>
</body>

</html>