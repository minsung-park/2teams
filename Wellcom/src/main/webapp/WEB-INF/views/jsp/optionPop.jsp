<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<body>
	<form id="changing-form">
		<h4>옵션 변경</h4>

		<label for="changeCPU"> CPU 변경</label> <select id="changeCPU"
			name="changeCPU">
			<option value="">---- CPU를 고르세요 ----</option>
			<option value="인텔 코어i7-10세대 10700K (코멧레이크S) (정품)">인텔
				코어i7-10세대 10700K (코멧레이크S) (정품)</option>
			<option value="AMD 라이젠5-3세대 3600XT (마티스) (정품)">AMD 라이젠5-3세대
				3600XT (마티스) (정품)</option>
			<option value="AMD 라이젠3-3세대 3300X (마티스) (정품)">AMD 라이젠3-3세대
				3300X (마티스) (정품)</option>
		</select> <input type="hidden" id="hidden-title" value=""> <label
			for="changeGPU"> 그래픽카드 변경</label> <select id="changeGPU"
			name="changeGPU">
			<option value="">---- 그래픽카드를 고르세요 ----</option>
			<option value="GAINWARD 지포스 RTX 2060 고스트 D6 6GB">GAINWARD
				지포스 RTX 2060 고스트 D6 6GB</option>
			<option value="이엠텍 지포스 RTX 2070 SUPER GAMER OC D6 8GB">이엠텍
				지포스 RTX 2070 SUPER GAMER OC D6 8GB</option>
			<option value="갤럭시 GALAX 지포스 RTX 2070 SUPER EX WHITE OC D6 8GB">갤럭시
				GALAX 지포스 RTX 2070 SUPER EX WHITE OC D6 8GB</option>
		</select> <label for="changeHDD"> HDD 용량 변경</label> <select id="changeHDD"
			name="changeHDD">
			<option value="">---- HDD 용량을 고르세요 ----</option>
			<option value="500GB">삼성 HDD 500GB</option>
			<option value="1TB">삼성 HDD 1TB</option>
			<option value="2TB">삼성 HDD 2TB</option>
		</select> <label for="changeSSD"> SSD 용량 변경</label> <select id="changeSSD"
			name="changeSSD">
			<option value="">---- SSD 용량을 고르세요 ----</option>
			<option value="250GB">삼성 SSD 250GB</option>
			<option value="500GB">삼성 SSD 500GB</option>
			<option value="1TB">삼성 SSD 1TB</option>
		</select> <label for="changeRam"> 램 용량 변경</label> <select id="changeRam"
			name="changeRam">
			<option value="">---- 램 용량을 고르세요 ----</option>
			<option value="8GB">8GB</option>
			<option value="16GB">16GB</option>
			<option value="32GB">32GB</option>
		</select>

		<div class="modal-footer">
			<button type="submit" class="btn btn-primary">저장</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		</div>
	</form>
</body>
</html>