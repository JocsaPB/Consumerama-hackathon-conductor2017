<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categorias Diversas</title>
<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-navsidebar.jsp"></jsp:include>
	<section class="aw-layout-content  js-content"
		style="padding-top: 10px; padding-left: 30px; padding-right: 30px; height: 150px">

		<ol class="breadcrumb">
			<li><a href="/usuario/home">Home</a></li>
			<li class="active">Categorias Diversas</li>
		</ol>
		<h3>Categorias diversas</h3>

		<select class="form-control">
			<option>Selecionar uma categoria...</option>
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
		<div class="row" style="padding-bottom: 10px">
			<div class="col-md-12" style="background-color: #f6f6f6">
				<div class="bs-callout bs-callout-info"
					id="callout-helper-bg-specificity">
					<h4>Dealing with specificity</h4>
					<p>
						Sometimes contextual background classes cannot be applied due to
						the specificity of another selector. In some cases, a sufficient
						workaround is to wrap your element's content in a
						<code>&lt;div&gt;</code>
						with the class.
					</p>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>