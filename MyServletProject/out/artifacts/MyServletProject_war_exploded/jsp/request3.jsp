<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
<head>
	<title> ��ȡGET����ŷ�ַ������� </title>
</head>
<body>
<%
	String queryRawString = request.getQueryString();
	out.println("ԭʼ���ַ���Ϊ��"+queryRawString+"<hr/>");
	String queryStr = java.net.URLDecoder.decode(queryRawString,"gbk");
	out.println("�������ַ���Ϊ��"+queryStr+"<hr/>");

	String[] paramStrs = queryStr.split("&");
	for(String paramStr : paramStrs){
		out.println("ÿ������Ĳ�����ֵΪ��"+paramStr+"<hr/>");
		String[] strs = paramStr.split("=");
		out.println(strs[0]+"������ֵΪ��"+strs[1]+"<hr/>");
	}

%>
</body>
</html>