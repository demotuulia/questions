<form>
	Langugage (1 = English, 2 = Dutch, 3 = French)<br>
	<input type = "text" name = "language" value = "<?php echo  $viewParams['language'] ?>">

	Start from (In format : YYYY-MM-DD hh:mm:ss) <br>
	<input type = "text" name = "start" value = "<?php echo  $viewParams['start'] ?>">

	End from (In format : YYYY-MM-DD hh:mm:ss) <br>
	<input type = "text" name = "end" value = "<?php echo  $viewParams['end'] ?>">

	 <br>
	<input type = "submit" name = "search"  value = "search">
</form>

