<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<body>
	<form id="changing-form">
		<h4>주소록</h4>

		<label for="changeAddress"> 주소를 선택해주세요</label> <select
			id="changeAddress" name="changeAddress">
			<option value="">---- 저장된 이름을 고르세요 ----</option>
			<option value="minsung">박민성</option>
			<option value="ezen">이젠컴퓨터IT</option>
		</select>
		<div class="modal-footer">
			<button type="submit" class="btn btn-primary">저장</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		</div>
	</form>
</body>
</html>