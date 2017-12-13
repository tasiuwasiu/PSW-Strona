<!DOCTYPE html>
<html>
	

<head>
	<meta charset="utf-8" /> 
	<title>Skład - WipeNation</title>
	<meta name="description" content="Skład gildii WipeNation">
	<meta name="keywords" content="wow,world,warcraft,wipenation,gildia,defias,skład,członkowie">
	<meta name="author" content="Rafał Wasik">
	<link rel="stylesheet" type="text/css" href="../css/sklad.css">
	<script src="../scripts/rng.js"> </script>
</head>

<body>
	
	<?php include '..\inc.php';?>

<div id="main">
	<h1 style="text-align:center;">Nasz obecny skład</h1>
	<br>
	
	<table id="tank">
		<tr>
			<th colspan = "3">Tankowie</th>
		</tr>
		<tr>
			<th>Nick</th>
			<th>Klasa</th> 
			<th>ILVL</th>
		</tr>
		<tr>
			<td>Kuraszek</td>
			<td>Death Knight</td> 
			<td>940</td>
		</tr>
		<tr>
			<td>Felkuz</td>
			<td>Druid</td> 
			<td>936</td>
		</tr>
	</table>

	<br><br>
	<table id="heal">
		<tr>
			<th colspan = "3">Healerzy</th>
		</tr>
		<tr>
			<th>Nick</th>
			<th>Klasa</th> 
			<th>ILVL</th>
		</tr>
		<tr>
			<td>Etosia</td>
			<td>Shaman</td> 
			<td>939</td>
		</tr>
		<tr>
			<td>Manuten</td>
			<td>Druid</td> 
			<td>930</td>
		</tr>
		<tr>
			<td rowspan="3">Thannel</td>
			<td>Priest</td> 
			<td>933</td>
		</tr>
		<tr>
			<td>Paladin</td> 
			<td>923</td>
		</tr>
		<tr>
			<td>Monk</td> 
			<td>930</td>
		</tr>
	</table>
	<br><br>

	<table id="multi">
		<tr>
			<th colspan = "2">Multikonta</th>
		</tr>
		<tr>
			<td>Majkusi</td>
			<td>
				<table>
					<tr>
						<td>Resto Shaman</td>
						<td>920</td>
					</tr>
					<tr>
						<td>Affliction Warlock</td>
						<td>935</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>Nightbrace</td>
			<td>
				<table>
					<tr>
						<td>Shadow Priest</td>
						<td>925</td>
					</tr>
					<tr>
						<td>Havoc Demon Hunter</td>
						<td>937</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

</div>
	
	<?php include '..\fun.php';?>
</body>

</html>