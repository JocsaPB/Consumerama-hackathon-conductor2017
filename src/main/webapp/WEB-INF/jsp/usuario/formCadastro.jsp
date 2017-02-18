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
</head>
<body>

	<form:form class="form-horizontal col-lg-11" action="/usuario/cadastrar" method="post" commandName="usuario">
  <fieldset>
    <legend>Cadastre-se</legend>
    
    <div>
    	<form:hidden path="id" />			
	</div>
    <div class="form-group">
      <label for="nome" class="col-lg-5 control-label">Nome: *</label>
      <div class="col-lg-3">
		<form:input path="nome" class="form-control" placeholder="Nome" required="required"/>
      </div>
    </div>
    <div class="form-group">
      <label for="email" class="col-lg-5 control-label">Email: *</label>
      <div class="col-lg-3">
        <form:input path="email" class="form-control" placeholder="Email" required="required"/>
      </div>
    </div>
    <div class="form-group">
      <label for="senha" class="col-lg-5 control-label">Senha: *</label>
      <div class="col-lg-3">
        <form:password path="senha" value="${usuario.senha }" class="form-control" placeholder="Senha" required="required"/>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-5">
        <button type="reset" onclick="javascript:window.history.go(-1)" class="btn btn-default">Voltar</button>
        <button type="submit" class="btn btn-primary">Finalizar Cadastro</button>
      </div>
    </div>
  </fieldset>
</form:form>
	
</body>
</html>