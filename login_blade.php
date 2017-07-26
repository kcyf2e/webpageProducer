<?php
/**********************************************************************************************
 **  程式功能:	使用者登入的後端
 **  程式名稱:  login_blade.php
 **  原設計者:  	  	                  設立日期:  2017-07-15
 **  備註:
 **  ---------------------------------- 異動記錄明細 ------------------------------------------
 **   異動日期     異動者               異動原因
 **  ----------  ----------  ------------------------------------------------------------------
 ***********************************************************************************************/
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>登入錯誤</title>
</head>

<body>
<p>
<?php
	session_start();//20170715
	$txtAccount = $_POST["userAccount"];
	$txtPassword = $_POST["userPassword"];
	include("dao/member_dao.php");
	$memDao = new MemberDAO();
	if($memDao->login($txtAccount,$txtPassword)){
		$list = $memDao->getByWhere(sprintf("userAccount='%s' and userPassword='%s'",$txtAccount,$txtPassword));
		foreach($list as $item){
			$_SESSION["level"] = $item["level"];
		}
		echo $_SESSION["level"];
		$_SESSION["userAccount"] = $txtAccount;
		$_SESSION["txtPassword"] = $txtPassword;
		header("location:index.php");
		exit();
	}
?>
</p>
<table align="center">
	<tr>
  	<td align="center">
			<h1 align="center">帳密錯誤</h1>
		</td>
  </tr>
  <tr>
  	<td align="center">
    	<a href="login_form.php">
		    <button>返回</button>
    	</a>  
    </td>
  </tr>
</table>

</body>
</html>