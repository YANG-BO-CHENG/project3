<?php
//連接資料庫
//只要此頁面上有用到連接MySQL就要include它
include("in.php");
//新增
$account_name1=$_POST["account_name1"];
$account_password2=$_POST["account_password2"];
$account_password3=$_POST["account_password3"];
$account_gender=$_POST["account_gender"];
$account_age=$_POST["account_age"];
$account_address=$_POST["account_birth"];
$account_phone=$_POST["account_phone"];

if( $account_password2 == $account_password3){

    $sql2=  "INSERT INTO client(client_name, identity_card, age, address, gender, phone) VALUES ('$account_name1','$account_password2','$account_age','$account_address','$account_gender','$account_phone')";
    $result2 = mysql_query($sql2);
    echo $result2;
    echo "新增成功";
	$ur2 = "jk.html";
	echo "<script type='text/javascript'>";
	echo "window.location.href='$ur2'";
	echo "</script>"; 
}else if($account_name1==null || $account_password2== null || $account_gender==null ||  $account_age== null || $account_phone==null || $account_address==null)
{
	echo "請重新輸入5";
		
}

?>