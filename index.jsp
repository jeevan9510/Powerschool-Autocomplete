<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery-1.4.2.min.js"></script>
<script src="jquery.autocomplete.js"></script>
<script>
jQuery(function(){
$("#country").autocomplete("List.jsp");
});
</script>
</head>
<body>
<br><br><center>
<font face="verdana" size="2">
<font size="10">Autocompleter</font>
<br><br><br><br>

<h1>Select Country   :
<input type="text" id="country" name="country" style="width : 300px;height: 50px"/>
</h1>
</font>
</body>
</html>