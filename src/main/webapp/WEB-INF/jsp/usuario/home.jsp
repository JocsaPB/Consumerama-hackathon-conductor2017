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
		<h2>Últimos tópicos...</h2>
		<br />
		<p style="text-align: center; width: 50%; margin-left: 25%; margin-bottom: 30px">
			Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica
		</p>
		<div class="list-group">
			<c:forEach items="${topicos}" var="topico">
				<div class="col-md-12 list-group-item">
					<div>
						<a href="/topico/topico/${topico.id}"><p>${topico.texto}</p></a>
					</div>
					<hr/>
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



	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>