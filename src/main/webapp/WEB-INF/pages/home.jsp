<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><c:out value="${page }"></c:out></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
</head>
<body>

	<div class="container mt-3">

		<h1 class="text-center">Welcome to todo manager</h1>

		<c:if test="${not empty msg }">
			<div class="alert alert-success">
				<b><c:out value="${msg }"></c:out></b>
			</div>
		</c:if>
		<div class="row mt-5">
			<div class="col-md-2">

				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active"
						aria-current="true">Menu</button>
					<a href='<c:url value='/add'></c:url>'
						class="list-group-item list-group-item-action">Add todo</a> <a
						href='<c:url value='/home'></c:url>'
						class="list-group-item list-group-item-action">View todo</a>

				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page=='home' }">
					<h1 class="text-center">All Todos</h1>
					
					<c:forEach items="${todos }" var="t">
					
					<div class="card">
					<div class="card-body">
					<h3><c:out value="${t.todoTitle }"></c:out></h3>
					<p><c:out value="${t.todoContent }"></c:out></p>
					
					</div>
					
					</div>
					
					</c:forEach>
					
				</c:if>
				<c:if test="${page=='add' }">
					<h1 class="text-center">Add Todos</h1>
					<br>
					<form:form action="saveTodo" method="post" modelAttribute="todo">
						<div class="form-group">
							<form:input path="TodoTitle" cssClass="form-control"
								placeholder="Enter your todo" />
						</div>
						<br>
						<div class="form-group">
							<form:textarea path="TodoContent" cssClass="form-control"
								placeholder="Enter your todo content" cssStyle="height:300px" />
						</div>
						<br>
						<div class="container text-center">
							<button class="btn btn-outline-success">Add Todo</button>
						</div>


					</form:form>


				</c:if>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>