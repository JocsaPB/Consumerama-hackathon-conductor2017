<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Minhas Categorias</title>
<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-navsidebar.jsp"></jsp:include>
	<section class="aw-layout-content  js-content"
		style="padding-top: 10px; padding-left: 30px; padding-right: 30px; height: 150px">

		<ol class="breadcrumb">
			<li><a href="/usuario/home">Home</a></li>
			<li><a href="active">Tópico</a></li>
		</ol>
		<div class="list-group">
			<div class="col-md-12 list-group-item">
				<h2>${topico.assunto}&nbsp<span class="badge">${mensagens.size()}
						comentários</span></a>
					</li>
				</h2>
				<p>${topico.texto }</p>
				<hr />
				<div style="float: right">
					<strong>${topico.usuario.nome } | ##.## Pontos</strong>
				</div>
			</div>
		</div>
		<br />
		<div>
			&nbsp
			<!-- div apenas para criar espaçamento -->
		</div>
		<div class="list-group">
			<c:forEach items="${mensagens}" var="mensagem">
				<div class="col-md-12 list-group-item">
					<div>
						<p>${mensagem.texto}</p>
					</div>
					<hr/>
					<div style="float: right">
						<strong>${mensagem.usuario.nome}</strong>
					</div>
				</div>
				<br />
				<div>
					&nbsp
					<!-- div apenas para criar espaçamento -->
				</div>
			</c:forEach>
		</div>

		<div class="row">
		<div class="col-md-12">
			<form:form action="/mensagem/nova/${topico.id}"
				commandName="topico" method="POST">
				<div class="form-group">
					<label for="texto">Novo comentário</label> <br />
					<textarea rows="5" class="form-control" cols="40" name="texto"
						id="texto" placeholder="Insira seu conteúdo..."></textarea>
				</div>

				<button type="submit" class="btn btn-primary" style="float: right">Criar
					tópico</button>
			</form:form>
		</div>
		
		</div>


	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>