package snippet;

public class Snippet {
	<!-- request: 승인 버튼 -->
				<%-- <c:if test="${board eq 'request' and not empty member and member.id eq 'admin'}"> --%>
				<c:if test="${board eq 'request'}">
					<hr>
					<div class="form-inline accept-btn" align="right">
						<button type="submit" data-board-num="${dto.num}" id="accept" class="btn btn-warning">승인</button>	
					
						<button type="submit" data-board-num="${dto.num}" id="reject" class="btn btn-warning">승인 취소</button>	
					</div>
				
				</c:if>
				<!-- 승인버튼 끝 -->
}

