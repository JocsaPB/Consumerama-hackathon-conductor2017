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
		<br/>
		<div>
			<div>
				<h4>Informática</h4>
			</div>
			<div class="col-md-12" style="background-color: #f6f6f6">
				<div class="bs-callout bs-callout-info"
					id="callout-helper-bg-specificity">
					<h4>Dell vs Asus - Qual a melhor atualmente</h4>
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
			
		</div>
		
		
	</section>

	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>