<?php 
$host = 'localhost';//主機
$user = 'root';
$upw  = '12345678';
$db   = 'my_nab';
$account_money1 = $_POST["account_money"];
$delete_name = $_POST["delete_name"];

$link = mysql_connect($host,$user,$upw,$db);
$account_name =$_POST["account_name"];
$account_password =$_POST["account_password"];
mysql_select_db("my_nab");
$sql = "SELECT * FROM client";
$result = mysql_query($sql);

if ($link)
{
	//mysql_query($link,"SET NAMES utf8");
	//echo "以正確連線"; 
    while($row = mysql_fetch_array($result))
    {
        //echo $row['identity_card']." ";
        if ($account_name == $row['identity_card']  && $account_password == $row['identity_card']  ) {
         echo "<body background='sky.jpg' width='100%'>";
         echo "<center>";   
  	     echo "<h2> Welcome!";
  	     echo "<br>";
		 echo "accout name:";   
		 echo  $account_name;  
	     echo "<br>";
         
    echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">'; //網頁編碼宣告  
    echo "origine accout money";
    $qw = "SELECT * FROM atm_transaction where identity_card = '$account_name'";
    $result2= mysql_query($qw);
    //echo $result2;
    if($row2=mysql_fetch_array($result2)){
		 echo $row2[4]; 
		 echo "</img>";
		 echo "<br>";
    }
         
    //echo $output;
         }
        else if ($account_name == null||$account_password == null||$account_name!=$account_password){ 
  	     echo "請重新輸入";
  	     //$ur3 = "jk.html";
		 //echo "<script type='text/javascript'>";
		 //echo "window.location.href='$ur3'";
		 //echo "</script>";
  	
         }    
    }
}
else 
{
	echo '無法連線資料庫:<br/>'.mysql_connent_error();
}

//刪除

$borrow = "SELECT * FROM borrow_money where identity_card = '$account_name'";
$money = "SELECT * FROM atm_transaction where identity_card = '$account_name'";
$borrow1 = mysql_query($borrow);
$money1 = mysql_query($money);

echo "<input type ='submit' value='還款'>";	
if(($money2=mysql_fetch_array($money1) )&&($borrow2=mysql_fetch_array($borrow1)) ){

echo $money2[4];
echo $borrow2[0];
if($money2[4]>$borrow2[0]){

	$de = "DELETE FROM borrow_money where identity_card ='$account_name'";
	$end = mysql_query($de) or die("無法刪除".mysql_error());
}
} 

//更新  

 $inputmoney = $_POST["input_money"];
 $outputmoney = $_POST["output_money"];
 $qw2 = "SELECT * FROM atm_transaction where identity_card = '$account_name'";
 $result2= mysql_query($qw2);
   echo "<br>";
     	if($row2=mysql_fetch_array($result2)){
     	// echo $row2[4];
     	$row2[4] = $row2[4] + $inputmoney;     	
         $up = "UPDATE atm_transaction SET Account__money =$row2[4] WHERE  identity_card = '$account_name'";
        }
         $result5 = mysql_query($up);
        if($result5 && $inputmoney!=null){
        	echo "更新成功";
        	echo "目前帳戶餘額:";
        	echo $row2[4];
        }
        $qw3 = "SELECT * FROM atm_transaction where identity_card = '$account_name'";
        $result3= mysql_query($qw3);
        if($row3=mysql_fetch_array($result3)){
     	$row3[4] =  $row3[4] - $outputmoney;
        if($row3[4]>=0){
     	//echo $row3[4];   	
         $up2 = "UPDATE atm_transaction SET Account__money ='$row3[4]' WHERE  identity_card = '$account_name'";
        
         $result4 = mysql_query($up2);
         }
        }
        if($result4 && $outputmoney!=null){
        	echo "更新成功";
        	echo "目前帳戶餘額:";
        	 echo $row3[4];
        }
?>
