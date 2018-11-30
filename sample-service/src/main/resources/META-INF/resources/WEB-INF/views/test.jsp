<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>게시글 목록</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<h2>Model 테스트 페이지입니다. from META</h2>
<br>
<h4>Object Test : ${ObjectTest}</h4>
<h4>list Test : ${posts}</h4>
<br>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#savePostsModal">글 등록</button>
<br>
<c:forEach var="posts" items="${posts}">
	${posts} <br>
</c:forEach>

<!-- 목록 출력 영역 -->
<table class="table table-horizontal table-bordered">
	<thead class="thead-strong">
	<tr>
		<th>게시글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>최종수정일</th>
	</tr>
	</thead>
	<tbody id="tbody">
	<c:forEach var="post" items="${posts}">
		<tr>
			<td>
					${post.id}
			<td>
			<td>
					${post.title}
			<td>
			<td>
					${post.author}
			<td>
			<td>
					${post.modifiedDate}
			<td>
		</tr>
	</c:forEach>
	</tbody>
</table>

<!-- Modal 영역 -->
<div class="modal fade" id="savePostsModal" tabindex="-1" role="dialog" aria-labelledby="savePostsLabel"
     aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="savePostsLabel">게시글 등록</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="title">제목</label>
						<input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
					</div>
					<div class="form-group">
						<label for="author"> 작성자 </label>
						<input type="text" class="form-control" id="author" placeholder="작성자를 입력하세요">
					</div>
					<div class="form-group">
						<label for="content"> 내용 </label>
						<textarea class="form-control" id="content" placeholder="내용을 입력하세요"></textarea>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				<button type="button" class="btn btn-primary" id="btn-save">등록</button>
			</div>
		</div>
	</div>
</div>

<!--부트스트랩 js, jquery 추가-->
<script src="assets/js/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

<!--custom js 추가-->
<script src="sample/sample.js"></script>
</body>
</html>
