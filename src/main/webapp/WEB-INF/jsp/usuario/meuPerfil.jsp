<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<div class="container centralizar" style="margin-top: 20px">
		<form:form class="form-horizontal col-md-12"
			action="/usuario/novo" method="post" commandName="usuario">
			<fieldset>
				<legend>Meu Perfil</legend>

				<div>
					<form:hidden path="id" />
				</div>
				<div class="form-group">
					<label for="nome" class="col-lg-5 control-label">Nome: *</label>
					<div class="col-lg-3">
						<form:input path="nome" class="form-control"
							required="required" />
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-lg-5 control-label">Email: *</label>
					<div class="col-lg-3">
						<form:input path="email" class="form-control"
							required="required" />
					</div>
				</div>
				<div class="form-group">
					<label for="senha" class="col-lg-5 control-label">Senha: *</label>
					<div class="col-lg-3">
						<form:password path="senha" value="${usuario.senha }"
							class="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-5">
						<button type="reset" onclick="javascript:window.history.go(-1)"
							class="btn btn-default">Voltar</button>
						<button type="submit" class="btn btn-primary">Salvar dados</button>
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
	</section>
	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>
</html>