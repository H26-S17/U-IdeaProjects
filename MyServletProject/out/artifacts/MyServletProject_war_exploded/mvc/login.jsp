<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title> �û���¼ </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
<!-- ���������ʾ -->
<span style="color:red;font-weight:bold">
<%
if (request.getAttribute("err") != null)
{
	out.println(request.getAttribute("err") + "<br/>");
}
%>
</span>
�������û��������룺
<!-- ��¼�����ñ��ύ��һ��Servlet -->
<form id="login" method="post" action="/LoginServlet">
�û�����<input type="text" name="username"/><br/>
��&nbsp;&nbsp�룺<input type="password" name="passwd"/><br/>
<input type="submit" value="��¼"/><br/>
</form>
</body>
</html>