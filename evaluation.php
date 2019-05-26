<?php

mysql_connect('127.0.0.1','root','');
mysql_select_db('bd2018');

$a=$_POST['D1'];
$b=$_POST['R1'];
$c=$_POST['R2'];
if(isset($_POST['C1'])){$d=$_POST['C1'];}else{$d=0;}
if(isset($_POST['C2'])){$e=$_POST['C2'];}else{$e=0;}
if(isset($_POST['C3'])){$f=$_POST['C3'];}else{$f=0;}
$date1=date("Y-m-d");
$s=$d+$e+$f;
$req1="SELECT * FROM evaluation WHERE idhotel='$a' AND dateeval='$date1'";
$res1=mysql_query($req1); 
$nb1=mysql_num_rows($res1);
if($nb1>0){echo('Cette Hote est deja evalue');}
else{
	$req2="INSERT INTO evaluation values('$date1','$a','$b','$c','$s');";
    $res2=mysql_query($req2); 
$nb2=mysql_affected_rows();
if($nb2 >=1){echo('Evaluation ajouter avec succcce'); }

}
$req3="SELECT nomhotel , AVG(noteacceuil),AVG(noterest),AVG(noteectra) FROM evaluation e , hotel h WHERE e.idhotel=h.idhotel GROUP BY 1 ;";
$res3=mysql_query($req3);
$i=0;
echo'<table border="1" width="100%">
	<tr>
		<td>N°</td>
		<td>Nom Hotel</td>
		<td>Moyenne(noteacceuil)</td>
		<td>Moyenne(noterest)</td>
		<td>Moyenne(noteextra)</td>
	</tr>

';
while($x=mysql_fetch_array($res3)){
	$i++;
	echo"<tr>
		<td>$i</td>
		<td>".$x['nomhotel']."</td>
		<td>".$x[1]."</td>
		<td>".$x[2]."</td>
		<td>".$x[3]."</td>
	</tr>
";
}
echo('</table>');
mysql_close();
?>