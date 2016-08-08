<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>
	<%
		String title = (String)request.getAttribute("title");
		if(title != null){
			out.print("PHSARNET | "+ title);
		}
		else
		{
			out.print("PHSARNET");	
		}
	%>
</title>
</head>
<body>
	<h1>Home Page...!</h1>
</body>
</html>