<html>
<body>

<h3>Declaration tag examples</h3>

<%!String toupper(String data){
	return data.toUpperCase();	
}
 
%>

Upper case "Hello World": <%=toupper("Hello World") %>
</body>
</html>