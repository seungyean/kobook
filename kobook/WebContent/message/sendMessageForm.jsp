<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int cur_id = Integer.parseInt((String)session.getAttribute("person_id"));
	System.out.println("cur_id: " + cur_id);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	쪽지보내기<br><br>
	<form action="/kobook/message/sendOk.do" method="post" name="messageForm">
		<input type="hidden" name="person_id" value="<%=cur_id %>">
		
		<table border="1" cellpadding="0" cellspacing="0">
		<tr height="30">
			<td width="80">보낼 사람</td>
			<td align="left" colspan="3">
				<input type="text" name="receiver_email" size="50">
			</td>	
		</tr>		
		<tr height="30">
			<td width="80">내용</td>			
			<td align="left" colspan="3">
				<textarea rows="10" cols="70" name="message_content"></textarea>
			</td>			
		</tr>
		<tr height="30">			
			<td colspan="4" align="center">
				<input type="submit" value="전송">&nbsp;&nbsp;
				<input type="button" value="취소" onclick="javascript:window.close();">
			</td>			
		</tr>
	</table>
	</form>
</body>
</html>