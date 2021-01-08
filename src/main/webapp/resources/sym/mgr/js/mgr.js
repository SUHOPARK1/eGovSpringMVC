var mgr = mgr || {}
mgr.access = x => {
	$.ajax({
		url: `${x}/managers/access`,
		type: `post`,
		data: JSON.stringify({email: $(`#uid`).val(), password:$(`#pwd`).val()}),
		dataType: 'json',
		contentType: 'application/json',
		success: d => {
			location.href = `${x}/mgr/index`
		},
		error: e => {
			alert(`Fail`)
		}
	})
}
mgr.count = x => {$(`#stu-count`).text(x)}
mgr.list = x => {
	$(`<h3/>`)
	.attr({id: `title`})
	.text(`학생목록`)
	.appendTo(`#mgr-data-mgt-stu`)
	$(`<table/>`)
	.attr({id: `tab`})
	.css({width: `100%`})
	.appendTo(`#title`) 
	$(`<tr/>`).attr({id: `tr_1`}).appendTo(`#tab`)
	const arr = [`No`,`아이디`,`이름`,`생년월일`,`성별`,`등록일`,`전공과목`]
	$.each(arr, function(i,j){
		$(`<th>${j}</th>`).css({backgroundColor: `lightblue`})
		.appendTo(`#tr_1`)})
	$.each(x, (i, j) => {
		$(`<tr><td>${j.stuNum}</td>
	   	    		<td>${j.userid}</td>
	   	    		<td>${j.name}</td>
					<td>${j.birthday}</td>
					<td>${j.gender}</td>
					<td>${j.regDate}</td>
					<td>${j.subject}</td></tr>`)
					.css({padding: `15px`, textAlign: `left`, fontSize: `medium`})
					.appendTo(`#tab`)})
	$(`<div/>`)
	.attr({id: `stu_page`})
	.addClass(`pagination`)
	.appendTo(`#mgr-data-mgt-stu`)
	const arr2 = [`<<`, `1`, `2`, `3`, `4`, `5`, `6`, `>>` ]
	$.each(arr2, (i, j) => {
		$(`<a/>`)
		.attr({href: `#`})
		.text(`${j}`)
		.appendTo(`#stu_page`)
		.click(e=>{
			e.preventDefault()
			alert(j)
		})
	})

}
/*
.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  border: 1px solid #ddd;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}*/
 
/*
<style>
.sub-table {
  width:100%;
}
.sub-table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
.sub-table th, td {
  padding: 15px;
  text-align: left;
}
.sub-table#t01 tr:nth-child(even) {
  background-color: #eee;
}
.sub-table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
.sub-table#t01 th {
  background-color: black;
  color: white;
}
</style>*/