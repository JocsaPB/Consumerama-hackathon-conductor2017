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

		<h3>Novo Tópico</h3>
		<br/>
		<div class="row ">
			<form action="/topico/novo" style="padding-left: 15px">
				<label for="categoria">Categoria</label>
				<select id="categoria" class="form-control" disabled="disabled">
					<option>Categoria selecionada</option>
				</select> <br />
				<div class="form-group">
					<label for="assunto">Assunto</label> <input
						type="text" class="form-control" id="assunto"
						placeholder="Informe um título para o seu tópico">
				</div>
				
				<div class="form-group">
					<label for="texto">Conteúdo</label> <br/>
					<textarea rows="5"  class="form-control" cols="40" id="texto" placeholder="Insira seu conteúdo..."></textarea>
				</div>
				
				<button type="submit" class="btn btn-primary" style="float: right">Criar tópico</button>
			</form>
		</div>

	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>