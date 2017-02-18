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

<title>Inicio</title>

<link rel="stylesheet" type="text/css"
	href="css/vendors.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/algaworks.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/application.css" />
</head>

<body class="aw-layout-simple-page">
	<div class="aw-layout-simple-page__container">

		<form:form class="form-horizontal col-lg-11" action="/usuario/logar" method="post" commandName="usuario">
			<div class="aw-simple-panel">
				<!-- link da imagem original 
					https://www.google.com.br/search?q=hackathon.png&espv=2&biw=1366&bih=702&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjo8Y3GtJPSAhXIW5AKHW9MCrQQ_AUIBigB#imgrc=7iOti2lQVF5_pM:
				-->
				<img alt=" Logo" style="max-width: 130px; max-height: 100px"
					src="/layout/images/hackathon-black.png" />

				<div class="aw-simple-panel__message">Por favor, faça o login.
				</div>

				<div class="aw-simple-panel__box">
					<div class="form-group  has-feedback">
<!-- 						<input type="text" class="form-control  input-lg" -->
<!-- 							placeholder="Seu e-mail" /> <span -->
<!-- 							class="glyphicon  glyphicon-envelope  form-control-feedback" -->
<!-- 							aria-hidden="true"></span> -->
							<form:input path="email" class="form-control" placeholder="email" required="required"/>
					</div>

					<div class="form-group  has-feedback">
<!-- 						<input type="password" class="form-control  input-lg" -->
<!-- 							placeholder="Sua senha" /> <span -->
<!-- 							class="glyphicon  glyphicon-lock  form-control-feedback" -->
<!-- 							aria-hidden="true"></span> -->
							<form:input path="senha" class="form-control" placeholder="senha" required="required"/>
					</div>
					<div class="form-group">
						<button class="btn  btn-primary  btn-lg  aw-btn-full-width">Entrar</button>
					</div>

					<div class="aw-simple-panel__footer">
						Novo por aqui? <a href="/usuario/cadastrar">Cadastre-se</a>.
					</div>
				</div>
		</form:form>

	</div>

	<script src="javascript/vendors.min.js"></script>
	<script src="javascript/algaworks.min.js"></script>
</body>

</html>