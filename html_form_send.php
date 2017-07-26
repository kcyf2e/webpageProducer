<?php

if(isset($_POST['email'])) {
        // CHANGE THE TWO LINES BELOW
    $email_to = "nccy1.tsai@gmail.com";
	
	
    $email_subject = "網站意見信";
     
     
    function died($error) {
        // your error code can go here
        echo "很抱歉，您填寫的資料不完整. ";
        echo $error."<br /><br />";
        echo "請回到上一頁修正表單內容.<br /><br />";
        die();
    }
     
    // validation expected data exists
    if(!isset($_POST['first_name']) ||
        !isset($_POST['last_name']) ||
        !isset($_POST['email']) ||
        !isset($_POST['comments'])) {
        died('We are sorry, but there appears to be a problem with the form you submitted.');       
    }
     
    $first_name = $_POST['first_name']; // required
    $last_name = $_POST['last_name']; // required
    $email_from = $_POST['email']; // required
    $comments = $_POST['comments']; // required
     
    $error_message = "";
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
  if(!preg_match($email_exp,$email_from)) {
    $error_message .= '您輸入的email格式不正確.<br />';
  }
   
   if(strlen($comments) < 2) {
    $error_message .= '請您輸入意見內容，謝謝！.<br />';
  }
  if(strlen($error_message) > 0) {
    died($error_message);
  }
    $email_message = "Form details below.\n\n";
     
    function clean_string($string) {
      $bad = array("content-type","bcc:","to:","cc:","href");
      return str_replace($bad,"",$string);
    }
     
    $email_message .= "First Name: ".clean_string($first_name)."\n";
    $email_message .= "Last Name: ".clean_string($last_name)."\n";
    $email_message .= "Email: ".clean_string($email_from)."\n";
    $email_message .= "Comments: ".clean_string($comments)."\n";
     
     
// create email headers
$headers = 'From: '.$email_from."\r\n".
'Reply-To: '.$email_from."\r\n" .
'X-Mailer: PHP/' . phpversion();
@mail($email_to, $email_subject, $email_message, $headers);  
 
 //header("Contact.htm");

 ?>
 
<!-- include your own success html here -->
感謝您的來信，我們會儘快跟您聯絡。謝謝！

<?php
 
}
?>

<!-- place your own success html below -->

 