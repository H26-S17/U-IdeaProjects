<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/27/027
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> ��ȡ����ͷ/������� </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
<%
//��ȡ��������ͷ������
Enumeration<String> headerNames = request.getHeaderNames();
while(headerNames.hasMoreElements())
{
	String headerName = headerNames.nextElement();
	//��ȡÿ�����󡢼����Ӧ��ֵ
	out.println(
		headerName + "-->" + request.getHeader(headerName) + "<br/>");
}
out.println("<hr/>");
//���ý��뷽ʽ�����ڼ������ģ�ʹ��gb2312����
request.setCharacterEncoding("gb2312");
//�������λ�ȡ�����ֵ
String name = request.getParameter("name");
String gender = request.getParameter("gender");
//���ĳ����������ж��ֵ����ʹ�ø÷�����ȡ���ֵ
String[] color = request.getParameterValues("color");
String national = request.getParameter("country");
%>
<!-- ����������������ֵ -->
�������֣�<%=name%><hr/>
�����Ա�<%=gender%><hr/>
<!-- �����ѡ���ȡ������ֵ -->
��ϲ������ɫ��<%for(String c : color)
{out.println(c + " ");}%><hr/>
�����ԵĹ��ң�<%=national%><hr/>
</body>
</html>