<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복확인</title>
</head>
<body>
<div style="text-align: center;">
	<h3>ID Check</h3>
		<form action="winopenCheckpro.jsp" method="post" onsubmit="return blacnkCheck(this)">
			ID : <input type="text" name="id" maxlength="10" autofocus="autofocus">
			<input type="submit" value="Check">
		</form>
	</div>
	<script type="text/javascript">
		function blacnkCheck(f) {
			var id = f.id.value;
			id = id.trim();
			
			if(id.length<5){
				alert("아이디를 다시 입력해주세요.");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>