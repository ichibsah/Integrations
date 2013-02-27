<!DOCTYPE html>
<html lang="en">
<head>
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<title>Score Table</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<style type="text/css">
		body{
			padding: 15px;
		}
	</style>
</head>
<body>
	<div class="container">
		<!--#include virtual="/ScoreTable/TableControl.asp"-->
		<%
			Dim TabControlObj
			Set TabControlObj = new TableControl
			TabControlObj.DisplayTable("/ScoreTable/ChartData.xml")
		%>
		<script type="text/javascript">
			$('table').addClass("table");
			$('table').addClass("table-striped");
		</script>
	</div>
</body>
</html>
