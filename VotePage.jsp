


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voting Page</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		h1 {
			text-align: center;
			margin-top: 50px;
		}
		.container {
			display: flex;
			justify-content: center;
			align-items: center;
			flex-wrap: wrap;
			margin: 50px auto;
			max-width: 800px;
		}
		.party {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin: 20px;
		}
		.symbol {
			width: 150px;
			height: 150px;
			background-color: lightgray;
			border-radius: 50%;
			display: flex;
			justify-content: center;
			align-items: center;
			font-size: 3em;
			font-weight: bold;
			color: white;
			text-shadow: 2px 2px darkgray;
			box-shadow: 2px 2px 5px gray;
		}
		.button {
			background-color: dodgerblue;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			font-size: 1em;
			cursor: pointer;
			margin-top: 10px;
			box-shadow: 2px 2px 5px gray;
		}
		.button:hover {
			background-color: deepskyblue;
		}
	</style>
</head>
<body>
	<h1>Vote for your favorite party</h1>
        <form action="VoteRegister.jsp" method="post">
	<div class="container">
      
		<div class="party">

			<div class="symbol">P1</div>
            
			<input type="submit"  name="Button_clicked" value="Button 1" />Vote for Party 1
		</div>
		<div class="party">
			<div class="symbol">P2</div>
			<input type="submit"  name="Button_clicked" value="Button 2"/>Vote for Party 2
		</div>
          
		<div class="party">
			<div class="symbol">P3</div>
			<input type="submit"  name="Button_clicked" value="Button 3"/>Vote for Party 3
		</div>
		<div class="party">
			<div class="symbol">P4</div>
			<input type="submit"  name="Button_clicked" value="Button 4"/>Vote for Party 4
		</div>
            
           
  </form>
</body>

</html>
