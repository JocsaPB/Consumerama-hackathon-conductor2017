<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todas as categorias</title>
<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp"></jsp:include>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$("#selectCategoria").change(function() {

			var idCategoria = $("#selectCategoria option:selected").val();

			$.ajax({
				type : 'get',
				url : '/topico/topico/categoria/' + idCategoria,
				success : function(retorno) {
					$('#listagem').html(retorno);
				}
			});
		});

	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-navsidebar.jsp"></jsp:include>
	<section class="aw-layout-content  js-content"
		style="padding-top: 10px; padding-left: 30px; padding-right: 30px; height: 150px">

		<ol class="breadcrumb">
			<li><a href="/usuario/home">Home</a></li>
			<li class="active">Todas as categorias</li>
		</ol>
		<h3>Categorias diversas</h3>

		<select class="form-control" id="selectCategoria">
			<option>Selecione uma categoria...</option>
			<c:forEach items="${categorias}" var="categoria">
				<option value="${categoria.id}">${categoria.nome}</option>
			</c:forEach>
		</select> <br />

		<div class="row">
			<div class="col-md-12">
				<a href="/topico/novo"><input class="btn btn-primary"
					style="float: right" value="Novo tópico"></a>
			</div>
		</div>
		<br />
		<div id="listagem" class="row" style="padding-bottom: 10px">
			<jsp:include page="/WEB-INF/jsp/topicos/topicosParcial.jsp"></jsp:include>
		</div>
	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>