<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dice Game</title>
<style>
h3 {
	color:red;
}
#user {
 	color:blue;
}
#alpha {
	color:green;
}
</style>
<body>

	<form name="playGame" action="/dicegame/roll" method="post">
		<h3>[ FaceValue ]</h3>
		<p id="user">${username} 's Face Value : ${userValue}</p>
		<p id="alpha">AlphaDice 's Face Value : ${alphaValue}</p> <br> 
		<h3>[ Current's RollNum ]</h3>
		<p id="user">${username} : ${curCellForUser}</p>
		<p id="alpha"> AlphaDice : ${curCellForAlphaDice} </p>

		<button type="submit">roll</button>
	</form>

</body>
</html>