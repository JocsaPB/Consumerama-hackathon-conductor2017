<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastre-se</title>

<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp"></jsp:include>

</head>
<body style="background-color: #f6f6f6">

	<div class="container centralizar" style="margin-top: 20px">
		<form:form class="form-horizontal col-md-12" action="/usuario/novo"
			method="post" commandName="usuario">
			<fieldset>
				<legend>Cadastre-se</legend>

				<div>
					<form:hidden path="id" />
				</div>
				<div class="form-group">
					<label for="nome" class="col-lg-5 control-label">Nome: *</label>
					<div class="col-lg-3">
						<form:input path="nome" class="form-control"
							placeholder="Informe seu nome..." required="required" />
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-lg-5 control-label">Email: *</label>
					<div class="col-lg-3">
						<form:input path="email" class="form-control"
							placeholder="Informe seu email: exemplo@email.com"
							required="required" />
					</div>
				</div>
				<div class="form-group">
					<label for="senha" class="col-lg-5 control-label">Senha: *</label>
					<div class="col-lg-3">
						<form:password path="senha" value="${usuario.senha }"
							class="form-control" placeholder="Informe uma senha..."
							required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-5">
						<button type="reset" onclick="javascript:window.history.go(-1)"
							class="btn btn-default">Voltar</button>
						<button type="submit" class="btn btn-primary">Finalizar
							Cadastro</button>
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>

	<jsp:include page="/WEB-INF/jsp/includes/javascript.jsp"></jsp:include>
</body>
</html>