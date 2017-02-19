<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="overflow: auto;">
	<div class="list-group"
		style="overflow: auto; margin-left: 15px; margin-right: 15px; height: 400px">
		<c:forEach items="${topicos}" var="topico">
			<div class="col-md-12 list-group-item">
				<div>
					<a href="/topico/topico/${topico.id}"><p>${topico.assunto}</p></a>
				</div>
				<hr />
				<div style="float: right">
					<strong>${topico.usuario.nome}</strong>
				</div>
			</div>
			<br />
			<!-- div apenas para criar espaçamento -->
			<div>&nbsp</div>
		</c:forEach>
	</div>
</div>
