<?php
print ($_COOKIE["appearance"]);
	if(isset($_COOKIE["appearance"]))
	{
		?>
		<script> 
			changeAppear(<?php echo $_COOKIE["appearance"] ?>); 
			selectEle(<?php echo $_COOKIE["appearance"] ?>); 
		</script> 
	<?php
	}
?>