<html>
<head>
	<title>Confirmation</title>
</head>
<body>
<%
	//read the data
	String favLang=request.getParameter("favouriteLanguage");

	//create the cookie
	Cookie theCookie=new Cookie("myApp.favouriteLanguage",favLang);
	
	//set the life span of the cookie
	theCookie.setMaxAge(60*60*24*365);
	
	//send the cookie to the browser
	response.addCookie(theCookie);
%>
Thanks We set your favourite Language to: ${param.favouriteLanguage}
<br><br>
<hr>
<a href="cookies-homepage.jsp">Homepage</a>
</body>
</html>