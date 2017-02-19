<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt">

<head>
	<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp"></jsp:include>
</head>

<body class="aw-layout-simple-page">
	<div class="aw-layout-simple-page__container">

		<form:form class="form-horizontal col-lg-11" action="/logar"
			method="post" commandName="usuario">
			<div class="aw-simple-panel">
				<!-- link da imagem original 
					https://www.google.com.br/search?q=hackathon.png&espv=2&biw=1366&bih=702&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjo8Y3GtJPSAhXIW5AKHW9MCrQQ_AUIBigB#imgrc=7iOti2lQVF5_pM:
				-->
				<img alt=" Logo" style="max-width: 130px; max-height: 100px"
					src="${pageContext.request.contextPath}/images/hackathon-black.png" />

				<div class="aw-simple-panel__message">Por favor, faça o login.
				</div>

				<div class="aw-simple-panel__box">
					<div class="form-group  has-feedback">
						<form:input path="email" class="form-control" placeholder="Informe seu email: exemplo@email.com"
							required="required" />
					</div>

					<div class="form-group  has-feedback">
						<form:input path="senha" type="password" class="form-control" placeholder="Informe sua senha..."
							required="required" />
					</div>
					<div class="form-group">
						<button class="btn  btn-primary  btn-lg  aw-btn-full-width">Entrar</button>
					</div>

					<div class="aw-simple-panel__footer">
						Novo por aqui? <a href="/usuario/novo">Cadastre-se</a>.
					</div>
				</div>
		</form:form>

	</div>

<jsp:include page="/WEB-INF/jsp/includes/javascript.jsp"></jsp:include>
</body>

</html>