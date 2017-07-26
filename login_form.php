<html>
<?php
/**********************************************************************************************
 **  程式功能:	使用者帳密登入
 **  程式名稱:  login_form.php
 **  原設計者:  	  	                  設立日期:  2017-07-15
 **  備註:
 **  ---------------------------------- 異動記錄明細 ------------------------------------------
 **   異動日期     異動者               異動原因
 **  ----------  ----------  ------------------------------------------------------------------
 ***********************************************************************************************/
?>
	<head>
		<title>登入畫面</title>		
  <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
	<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
	</head>
	<body>		
  	<h1 align="center">登入畫面</h1>
		<form action = "login_blade.php" align="center" method="post"> 
      <table align="center">
      	<tr>
        	<td>
            帳號：
          </td>
          <td>
          	<span id="sprytextfield1">
            <input type="text" name="userAccount">
            <span class="textfieldRequiredMsg">需要有一個值。</span></span>
          </td>
        </tr>
       	<tr>
        	<td>
            密碼：
          </td>
          <td>   
          	<span id="sprytextfield2">         
            <input type="password" name="userPassword">
            <span class="textfieldRequiredMsg">需要有一個值。</span></span>
					</td>
        </tr>            
      	<tr>
        	<td colspan="2" align="center">
          
          <?php 				
						if(isset($_SESSION["userAccount"])){
							echo "<a href='logout.php'><button type='button'>登出</button></a>";
						}else{
							echo "<button type='submit' >登入</button>";
						}
					?>
            <a href="register/register_form.php">
            <button type="button">註冊</button>
            </a>
					</td>
        </tr>
      </table>
		</form>
  <script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
  </script>
	</body>
</html>