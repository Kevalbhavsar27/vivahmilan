
<?php
 session_start();
 require_once("connection.php");

    $uid=$_SESSION['admin_mail'];
    $qry="select * from admin_tbl where admin_email='".$uid."'";
   // echo $qry;die;
     $result=mysqli_query($conn,$qry);
     if(mysqli_num_rows($result)>0)
     {
        $_SESSION['admin_mail']=$uid;
        $otp=rand(100000,999999);
        $time=time();
        $status=1;
        
        require 'phpmailer/PHPMailerAutoload.php';
        require 'phpmailer/class.phpmailer.php';
        $data=mysqli_fetch_array($result);
        $_SESSION['user_name_data']=$data['admin_name'];
        $otp=rand(100000,999999);
        $_SESSION['random_otp']=$otp;
        //$to_id = $_POST['toid'];
        //$_SESSION['forgot_email']=$uid;
        $uid=$_SESSION['admin_mail'];
        $subject = "Forgot Password";
        $setfrom="Dream Tiffin";
        
        // Retrieve the email template required
        $message = '
                    <html>
                    <head>
                    <title>HTML email</title>
                    <style>

                    </style>
                    </head>
                    <body>
                    
                    <div class="c-email" style="width:60%;margin:auto;border:1px solid #BAE3FF;border-radius:5px;padding:30px 30px 12px 30px;">
                
                      <div style="text-align:center">
                        Dream Edu
                      </div>
                      
                      <div class="c-email__content">
                        <p style="font-size:14px;font-family:roboto;color:#383838;font-weight:bold;">
                          Dear '.$_SESSION['user_name_data'].',</p>

                        <o>You have requested to recover your password for online access to our website. We have generated a One - Time Passcode for you which will verify that you have requested access. This One - Time Passcode is time sensitive and valid for a single use.</o><br>

                        <div class="c-email__code" style="text-align:center;margin-top:10px;margin-bottom:10px">
                          <span style="font-size:15px;font-family:roboto;color:#388080;font-weight:bold;">'.$_SESSION['random_otp'].'</span>
                        </div>
                      </div>
                     
                        <hr>
                        <div style="font-size:10px;font-family:roboto;color:#383838;text-align:center">
                            <o>Thank you for utilising our services</o><br>
                            <o>-</o><br>
                            <o>Dream Infotech</o><br>
                            <o>99552 44556, 99556 22885</o><br>
                            <o>www.dreaminfotech@gmail.com</o><br>
                            <o>Dream Infotech User Authentication</o>
                        </div>
                    </div>
                    </body>
                    </html>
            ';
            $mail = new PHPMailer();
        
            $mail->isSMTP();
            //$mail->SMTPDebug = 2;
            $mail->Host = 'smtp.gmail.com';
            $mail-> SMTPSecure = 'tls';
            $mail-> SMTPAuth = true;
            $mail->CharSet = "UTF-8";
            $mail->Port = 587;
            $mail->Username   = 'shahbunny747@gmail.com';
            $mail->Password   = 'bunny1234567890';
            $mail->FromName = $setfrom;
            $mail->addAddress($uid);
            $mail->Subject = $subject;
            $mail->msgHTML($message);
            if($mail->send())
            {
                $str="insert into otp_tbl values(NULL,'".$otp."','".$status."','".$time."')";
                //echo $str;die;
                $sucess=mysqli_query($conn,$str);
                //echo hii;
                if($sucess)
                {
                    //echo hii;
                    echo ("<script>window.alert('OTP send sucessfully.please check your email') ; window.location.href='verify_code.php'; </script>");
                    //header('location:code.php');
                }
                else
                {
                    echo ("<script>window.alert('.....')") ;
                }
            }

            
     }
     else
     {
        echo "<script>alert('Invalid Email ID');</script>";
     }
 
?>