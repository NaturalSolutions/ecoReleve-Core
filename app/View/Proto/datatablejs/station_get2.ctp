<?php if($find == 1):?>
{
<?php echo $debug;?>
"sEcho":<?php echo $sEcho?>,
"iTotalRecords": <?php echo $total?>,
"iTotalDisplayRecords": <?php echo $totaldisplay?>,
"aaData":[
<?php if($result):?>
<?php $i=0; foreach ($result as $t): ?>
[
"<?php echo $t['Station']['Area']?>","<?php echo $t['Station']['Locality']?>","<?php echo $t[0]['DATE']?>","<?php echo $t['Station']['FieldWorker1']?>"
]<?php if($i<sizeof($result)-1)echo ",";?>	
<?php $i++;?>
<?php endforeach?>
<?php endif?>
],
"aoColumns": [
<?php $i=0; foreach($schema as $key=>$val): ?>
{"sTitle":"<?php echo preg_replace('/(\w+)\.(\w+)/','\2',$val)?>"}<?php if($i<sizeof($schema)-1)echo ",";?>	
<?php $i++;?>
<?php endforeach?>
]
}
<?php endif?>

<?php if($find == 2):?>	
	<?php echo json_encode($table);?>
<?php endif?>

<?php if($find == 0):?>	
<?php echo json_encode(array('erreur'=>'Aucun protocole désigné. Veuillez indiquer le nom de la table sur un parametre ?table_name="nom table".'))?>
<?php endif?>
<?php if($find == -1):?>	
<?php echo json_encode(array('erreur'=>"Cette table n'existe pas."))?>
<?php endif?>
<?php if($find == -2):?>	
<?php echo json_encode(array('erreur'=>'Une(ou des) colonne(s) est(sont) inexistante(s).'))?>
<?php endif?>