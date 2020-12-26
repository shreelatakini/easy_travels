<?php
//SQL STORAGE
$servername='localhost';
$username='root';
$password='';
$dbname = "easytravels";
$conn=mysqli_connect($servername,$username,$password,"$dbname");
if(!$conn){
    die('Could not Connect My Sql:' .mysql_error());
 }

$name = $_POST['name'];
$places = $_POST['Places'];
$date = $_POST['date'];
$message = $_POST['message'];
$em1 = $_POST['email1'];
$em2 = $_POST['email2'];

$sql = "INSERT INTO tripdetails (name,places,date,email1,email2,message)
VALUES ('$name','$places','$date','$em1','$em2','$message')";

mysqli_query($conn, $sql);
mysqli_close($conn);

//EMAIL TRIGGER
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

    $mail = new PHPMailer;                      // Enable verbose debug output
    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = "smtp.gmail.com";                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = "etravelsrs@gmail.com";                     // SMTP username
    $mail->Password   = "rishisahana";                               // SMTP password
    $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    //Recipients
    $mail->setFrom("easytravelsrs@gmail.com","Easy Travels");
    $mail->addAddress($em1);
    $mail->addAddress($em2);  
    $mail->addReplyTo("easytravelsrs@gmail.com");
    //$mail->addCC('cc@example.com');
    //$mail->addBCC('bcc@example.com');

    // Attachments
    //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

    // Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'TRIP DETAILS';
    $mail->Body    = '<b>Place:</b> ' .$places. '<br><b>Date:</b> ' .$date. '<br><b>Things to carry:</b> ' .$message;
    $mail->AltBody = 'This is an email from Easy Travels';

    if($mail->send())
    {
        echo "Messages have been sent";
    }
    else
    {
        echo "Failure";
    }

?>  