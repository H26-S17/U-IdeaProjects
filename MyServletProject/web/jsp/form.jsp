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
	<title> �ռ������ı�ҳ </title>
</head>
<body>
<form id="form1" method="get" action="/SecondServlet">
�û�����<br/>
<input type="text" name="name"><hr/>
�Ա�<br/>
�У�<input type="radio" name="gender" value="��">
Ů��<input type="radio" name="gender" value="Ů"><hr/>
ϲ������ɫ��<br/>
�죺<input type="checkbox" name="color" value="��">
�̣�<input type="checkbox" name="color" value="��">
����<input type="checkbox" name="color" value="��"><hr/>
���ԵĹ��ң�<br/>
<select name="country">
	<option value="�й�">�й�</option>
	<option value="����">����</option>
	<option value="����˹">����˹</option>
</select><hr/>
<input type="submit" value="�ύ">
<input type="reset" value="����">
</form>
</body>
</html>