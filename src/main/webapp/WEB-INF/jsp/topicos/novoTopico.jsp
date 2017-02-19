<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo tópico</title>
<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-navsidebar.jsp"></jsp:include>
	<section class="aw-layout-content  js-content"
		style="padding-top: 10px; padding-left: 30px; padding-right: 30px; height: 150px">
		<ol class="breadcrumb">
			<li><a href="/usuario/home">Home</a></li>
			<li class="active">Novo Tópico</li>
		</ol>

		<h3>Novo Tópico</h3>
		<br/>
		<div class="row ">
			<form:form action="/topico/novo/" style="padding-left: 15px" commandName="topico" method="POST">
				<label for="categoria">Categoria</label>
				<select id="categoria" name="categoria.id" class="form-control">
					<option>Selecionar uma categoria...</option>
					<c:forEach items="${categorias}" var="categoria">
						<option value="${categoria.id}">${categoria.nome}</option>
					</c:forEach>
				</select> <br />
				<div class="form-group">
					<label for="assunto">Assunto</label> <input
						type="text" class="form-control" name="assunto" id="assunto"
						placeholder="Informe um título para o seu tópico">
				</div>
				
				<div class="form-group">
					<label for="texto">Conteúdo</label> <br/>
					<textarea rows="5"  class="form-control" cols="40" name="texto" id="texto" placeholder="Insira seu conteúdo..."></textarea>
				</div>
				
				<button type="submit" class="btn btn-primary" style="float: right">Criar tópico</button>
			</form:form>
		</div>

	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>