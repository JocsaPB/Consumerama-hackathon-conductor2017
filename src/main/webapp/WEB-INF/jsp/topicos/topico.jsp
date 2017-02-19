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
		<div class="col-md-12">
			<h2>${topico.assunto}</h2>
			<p>
			${topico.texto }
			</p>
		</div>
		
		<div>
			<c:forEach items="${mensagens}" var="mensagem">
				<p>
				${mensagem.texto}
				</p>
				<strong>${mensagem.usuario.nome}</strong>
			</c:forEach>
		</div>
		
		<div class="col-md-12">
			<form:form action="/mensagem/nova/${topico.id}" style="padding-left: 15px" commandName="topico" method="POST">
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