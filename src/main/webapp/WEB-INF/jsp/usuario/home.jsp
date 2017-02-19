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
		<div>
			<c:forEach items="${topicos}" var="topico">
				<div>
					<h4>${topico.categoria.nome}</h4>
				</div>

				<div class="col-md-12" style="background-color: #f6f6f6">
					<div class="bs-callout bs-callout-info"
						id="callout-helper-bg-specificity" style="paddin-bottom: 10px">
						<a href="/topico/topico/${topico.id}" ><h4>${topico.assunto}</h4></a>
						<p>${topico.texto}</p>
					</div>
				</div>
				<br />
			</c:forEach>
		</div>



	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>