<html>
<head>
	<title>Student Confirmation</title>
</head>
<body>
 The Student is confirmed: ${param.firstName} ${param.lastName}
 </br>
 
 <!-- Display list of favorite language -->
 <ul>
 	<%
 		String[] l=request.getParameterValues("favouriteLanguage");
 	if(l!=null){
 		for(String s:l)
 		{
 			out.println("<li>"+ s +"</li>");
 		}
 	}
 	%>
 </ul>
</body>
</html>