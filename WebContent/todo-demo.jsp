<%@ page import="java.util.*"%>
<html>
<head>
	<title>TO DO list</title>
</head>
<body>
<!--Step 1: Create HTML form  -->
<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem"/>
	
	<input type="submit" value="submit"/>
</form>
 
<!-- Step 2: Add new item to "TODO" list -->
<% 
//get the TO DO items from the session
List<String> item=(List<String>)session.getAttribute("myToDoList");

//if the To Do list doesn't exist, then create a new one
if (item==null)
{
	item=new ArrayList<String>();
	session.setAttribute("myToDoList", item);
}

//see if there is form data to add
String theItem=request.getParameter("theItem");
/* if((theItem!=null)&& (!theItem.equals("")))
{
	item.add(theItem);
} */
boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
boolean isItemNotDuplicate = theItem != null && !item.contains(theItem.trim());

if (isItemNotEmpty && isItemNotDuplicate) {    		
	item.add(theItem.trim());    		
}
%>
<!-- Step 3: Display all "To Do" item from session -->
<hr>
<b>ToDo list items:<br></b>
<ol>
<%
 for(String s:item)
 {
	 out.println("<li>"+s+"</li>");
 }
%>
</ol>
</body>
</html>