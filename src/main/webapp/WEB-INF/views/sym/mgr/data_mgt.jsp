<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<section id="data-mgt">
    <table class="my-tab" id="mgr-tab">
    	<tr>
    		<th style="width:30%">관리 항목</th><th>조회 결과</th>
    	</tr>
    	<tr>
    		<td>학 생 (총 <span id="stu-count"></span> 명)<br/><br/>
    		<input type="text" id="stu-data-count"/><button id="mgr-insert-many-stu">건 데이터생성</button><br/><br/>
	    		<input type="radio" name="stu-data-gender" value= "M" checked="checked"/>남성
	    		<input type="radio" name="stu-data-gender"value= "F"/>여성<button>성별조회</button><br/><br/>
	    		<input type="text" id="stu-data-count"/><button>수정</button><br/><br/>
	    		<input type="text" id="stu-data-count"/><button>삭제</button><br/><br/>
	    		<button id="mgr-truncate-stu">전체삭제</button>
    		</td>
    		<td>    			
    		</td>
    	</tr>
    	<tr>
    		<td>교강사<br/><br/>
    		<input type="text" id="tea-data-count"/><button id="mgr-insert-many-tea">건 데이터생성</button><br/><br/>
	    		<input type="radio" name="tea-data-gender" value= "M" checked="checked"/>남성
	    		<input type="radio" name="tea-data-gender"value= "F"/>여성<button>성별조회</button><br/><br/>
	    		<input type="text" id="tea-data-count"/><button>수정</button><br/><br/>
	    		<input type="text" id="tea-data-count"/><button>삭제</button><br/><br/>
	    		<button>전체삭제</button>
    		</td>
    		<td>    			
    		</td>
    	</tr>
    	<tr>
    		<td>사 원<br/><br/>
    		<input type="text" id="-data-count"/><button id="mgr-insert-many-tea">건 데이터생성</button><br/><br/>
	    		<input type="radio" name="stu-data-gender" value= "M" checked="checked"/>남성
	    		<input type="radio" name="stu-data-gender"value= "F"/>여성<button>성별조회</button><br/><br/>
	    		<input type="text" id="stu-data-count"/><button>수정</button><br/><br/>
	    		<input type="text" id="stu-data-count"/><button>삭제</button><br/><br/>
	    		<button>전체삭제</button>
    		</td>
    		<td>
    		</td>
    	</tr>
    </table>
</section>
<script>
$.getJSON(`${ctx}/students/count`, function(d){
	$(`#stu-count`).text(d)
})
$(`#mgr-truncate-stu`).click(function(e){
	e.preventDefault()
	$.getJSON(`${ctx}/students/truncate`, function(d){
		location.reload();
	})
})
$(`#mgr-insert-many-stu`).click(function(e){
	e.preventDefault()
	$.getJSON(`${ctx}/students/insert-many/`+$('#stu-data-count').val(), 
			function(d){ location.reload();}) 
})
</script>
