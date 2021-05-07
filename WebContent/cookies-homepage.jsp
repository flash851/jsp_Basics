<html>
<head>
	<title>Training Portal</title>
</head>

<body>
<h1>Training Portal</h1>
<%
	String favLang="Java";
	Cookie[] theCookies=request.getCookies();

	if(theCookies!=null)
	{
		for(Cookie t: theCookies)
		{
			if("myApp.favouriteLanguage".equals(t.getName()))
			{
				favLang=t.getValue();
				break;
			}
		}
	}
%>

<!-- Now shoe the personalize page...... use the favLang --> 
 
<h4>New Books for <%=favLang %></h4>
<ul>
	<li>Blahh blah blahh</li>	
	<li>Blahh blah blahh</li>	
	<li>Blahh blah blahh</li>	
</ul>
<h4>New News Reports for <%=favLang %></h4>
<ul>
	<li>Blahh blah blahh</li>	
	<li>Blahh blah blahh</li>	
	<li>Blahh blah blahh</li>	
</ul>
<h4>Hot Jobs for <%=favLang %></h4>
<ul>
	<li>Blahh blah blahh</li>	
	<li>Blahh blah blahh</li>	
	<li>Blahh blah blahh</li>	
</ul>
<hr>
<a href="cookies-pesonalize-homepage.jsp">Personalize this Page</a>
</body>
</html>