<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.util.*" %>
<html>
<head>
	<title> �û�������Ϣ </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
�����û���
<table width="400" border="1">
<%
Map<String , String> online = (Map<String , String>)application.getAttribute("online");
for (String sessionId : online.keySet())
{%>
<tr>
	<td><%=sessionId%>
	<td><%=online.get(sessionId)%>
</tr>
<%}%>
</body>
</html>