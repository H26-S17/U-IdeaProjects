<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title> ����ServletContextListener </title>
    <meta name="website" content="http://www.crazyit.org"/>
</head>
<body>
<hr>������ֱ�Ӵ�application��ȡ�����ݿ����ӣ���ִ�в�ѯ��Ľ��:</hr><br/>
<%
    Connection conn = (Connection) application.getAttribute("conn");
//����Statement����
    Statement stmt = conn.createStatement();
//ִ�в�ѯ
    ResultSet rs = stmt.executeQuery("select * from user");
%>
<table bgcolor="#9999dd" border="1" width="300">
        <%
//���������
while(rs.next())
{
%>
    <tr>
        <td><%=rs.getString(1)%>
        </td>
        <td><%=rs.getString(2)%>
        </td>
        <td><%=rs.getString(3)%>
        </td>
        <td><%=rs.getString(4)%>
        </td>
    </tr>
        <%}%>
    </table>
</body>
</html>