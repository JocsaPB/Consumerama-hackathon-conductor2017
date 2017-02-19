<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-navsidebar.jsp"></jsp:include>
	<section class="aw-layout-content  js-content"
		style="padding-top: 10px; padding-left: 30px; padding-right: 30px; height: 150px">
		<ol class="breadcrumb">
			<li><a href="active">Home</a></li>
		</ol>
		<h2>Ultimos topicos...</h2>
		<br />
			
		<c:if test="${topicos.size()>0}">

			<div class="list-group">
				<c:forEach items="${topicos}" var="topico">
					<div class="col-md-12 list-group-item">
						<div>
							<a href="/topico/topico/${topico.id}"><p>${topico.assunto}</p></a>
						</div>
						<hr />
						<div style="float: right">
							<strong>${topico.usuario.nome}</strong>
						</div>
					</div>
					<br />
					<div>
						&nbsp
						<!-- div apenas para criar espaçamento -->
					</div>
				</c:forEach>
			</div>
		</c:if>

		<c:if test="${topicos.isEmpty()}">
			<blockquote class="blockquote">
				<p class="mb-0">
					Ainda não existe nenhum tópico criado...<br />
					<a href="/topico/novo">Seja o primeiro a criar!</a>
				</p>
			</blockquote>
		</c:if>



	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>