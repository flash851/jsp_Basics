<html>
<body>

<h3>JSP Built-In Objects</h3>
Request user Agent: <%= request.getHeader("User-Agent")%>
<br>

Request Language: <%=request.getLocale() %>
</body>
</html>