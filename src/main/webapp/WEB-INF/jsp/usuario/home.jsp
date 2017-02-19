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
		style="padding: 30px; height: 150px">
		<div class="panel panel-default" style="height: 150px">
			<div class="panel-body">Tópico eletronicos</div>
		</div>
	</section>

	<section class="aw-layout-content  js-content"
		style="padding: 30px; height: 150px">
		<div class="panel panel-default" style="height: 150px">
			<div class="panel-body">Tópico instrumentos musicais</div>
		</div>
	</section>

	<section class="aw-layout-content  js-content"
		style="padding: 30px; height: 150px">
		<div class="panel panel-default" style="height: 150px">
			<div class="panel-body">Tópico informática</div>
		</div>
	</section>
	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>