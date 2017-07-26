<?php
/**********************************************************************************************
 **  程式功能:	產品	sw_product
 **  程式名稱:  Product_form.php
 **  原設計者:  Selina  	                  設立日期:  2017-07-16
 **  備註:
 **  pd_id,pd_no,pd_nm,pd_type,pd_price,pd_inventory,pd_pic,pd_spec,pd_idlaunched,addAccount,modifyAccount
 **	 產品ID,產品編號,產品名稱,產品類別,產品金額,產品庫存數量,產品圖片,產品說明,產品上架,新增人員,修改人員
 **  ---------------------------------- 異動記錄明細 ------------------------------------------
 **   異動日期     異動者               異動原因
 **  ----------  ----------  ------------------------------------------------------------------
 **  20170719		Selina				v20170719001 增加會員管控
 **	 20170722		Selina				調整
 ***********************************************************************************************/
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>產品展示</title>

<style>
div{
	display:float;
	float:left;
	height:100%;
	width:100%;
}
#divPic{/*20170716*/
	width:100%;	
	background-color:#FFC;
}
#divPicItem{/*20170716*/
	width:200px;
}
.picD{/*20170716*/
	width:100%;
	height:200px
}
table{/*20170716*/
	width:100%;
}
#divspec{
width:50px;
height:150px;
}
@media screen and (min-width:480px){

}
@media screen and (min-width:768px){

}
@media screen and (min-width:1024px){

}
</style>
  <?php 				//v20170719001
	if(!isset($_SESSION["userAccount"])){ 
		header("location:login_form.php");
	}
  ?>
</head>

<body>

<div >
	<?php
		include_once ("dao/product_dao.php");
		$pci_src = 'product/product_images/';		
		$pdDao=new ProductDAO();
		$type = $pdDao->getData("SELECT * FROM allguide as a WHERE EXISTS(select 'x' from allguide WHERE guide_no = 'CAKE' AND guide_id = a.up_id )");	
		foreach($type as $f){
			$pd_type = $f['guide_no'];
			echo "<div id='divPic'><h2>".$f['guide_spec']."</h2>";
			$list = $pdDao->getByWhere("pd_type = '$pd_type'");//只抓上架資料
			foreach($list as $item){
				echo "<div id='divPicItem' >";
				$s=sprintf("<table border='1'><tr><td><img class='picD' src='%s'></td></tr><tr><td align='center'>%s</td></tr><tr><td align='center'>$%d</td></tr><tr><td id='divspec'>%s</td></tr><tr><td>%s</td></tr></table>",$pci_src.$item["pd_pic"],$item["pd_no"],$item["pd_price"],$item["pd_spec"],$item['pd_idlaunched']?'上架':'<b>下架</b>');
				echo $s;
				echo "</div>";
			}
			echo "</div>";
		}
		

		
	?>
</div>

</body>
</html>
