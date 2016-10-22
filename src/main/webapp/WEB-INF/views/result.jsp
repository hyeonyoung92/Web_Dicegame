<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	background-color: yellow;
	font-size: 13pt;
	font-weight: strong;
	align: center;
}
</style>
<body>
	<h2>Result : ${message} !!</h2>
	${username} : ${curCellForUser}
	<br>
	<br> AlphaDice : ${curCellForAlphaDice}
	<br>
	<br>
	<br>
	<br>
	<form action="/dicegame/scoreview">
		<button type="submit">Score</button>
	</form>

	<form action="/dicegame">
		<button type="submit">Restart</button>
	</form>
	<button type="submit" name="exit" onclick="window.close();">Exit</button>
</body>
</html>