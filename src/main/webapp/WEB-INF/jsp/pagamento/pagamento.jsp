<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Pagamento</title>

<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp"></jsp:include>

</head>

<body style="background-color: #f6f6f6">

	<div class="container centralizar" style="margin-top: 20px">
		<div style="margin-top: 100px;" class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<c:if test="${success}">
					<div class="alert alert-success">Transferência de pontos
						efetuada com sucessso!</div>
				</c:if>
				<form:form class="form-horizontal" method="post"
					commandName="pagamento" action="/pagamento">
					<fieldset>
						<legend>Conversão de pontos de compras</legend>
						<div class="form-group">
							<label class="control-label col-sm-2" for="valor">Valor:</label>
							<div class="col-sm-10">
								<input name="valor" required="required" type="number"
									class="form-control" id="valor" placeholder="valor da compra">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="email">Usuário:</label>
							<div class="col-sm-10">
								<input name="usuario.email" required="required" type="email"
									class="form-control" id="email" placeholder="e-mail do usuário">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="categoria">Categoria:
							</label>
							<div class="col-sm-10">
								<select name="categoria.id" required="required"
									class="form-control form-control-lg" id="categoria">
									<option>Selecionar uma categoria...</option>
									<c:forEach items="${categorias}" var="categoria">
										<option value="${categoria.id}">${categoria.nome}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<br />
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">Confirmar
									conversão de pontos</button>
							</div>
						</div>
					</fieldset>
				</form:form>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/includes/layout/layout-footer.jsp"></jsp:include>
</body>

</html>