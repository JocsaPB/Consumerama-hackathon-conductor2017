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

    <title>Layout-Base</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendors.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/algaworks.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/application.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>

    <div class="aw-layout-loading  js-loading-overlay">
        <div class="aw-layout-loading__container">
            <span class="aw-balls-spinner">Carregando...</span>
        </div>
    </div>

    <div class="aw-layout-page">

        <nav class="navbar  navbar-fixed-top  navbar-default  js-sticky-reference" id="main-navbar">
            <div class="container-fluid">

                <div class="navbar-header">
                    <a class="navbar-brand  hidden-xs" href="#">
                        <img alt="Reservado para logo" style=" max-width: 130px; max-height: 100px" src="${pageContext.request.contextPath}/images/hackathon-white.png" />
                    </a>

                    <ul class="nav  navbar-nav">
                        <li>
                            <a href="#" class="js-sidebar-toggle"><i class="fa  fa-bars"></i></a>
                        </li>
                    </ul>
                </div>

                <ul class="nav navbar-nav  navbar-right">

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fa  fa-user"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <div class="aw-logged-user">
                                    <img src="https://api.adorable.io/avatars/80/joaodascouves" width="80" height="80" alt="" class="aw-logged-user__picture"
                                    />
                                    <span class="aw-logged-user__name">Usuário xyz</span>
                                </div>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Meu perfil</a></li>
                            <li><a href="#">Alterar senha</a></li>
                            <li><a href="#">Pagamentos</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="login.html"><em class="fa  fa-sign-out"></em></a>
                    </li>
                </ul>

            </div>
        </nav>

        <aside class="aw-layout-sidebar  js-sidebar">
            <div class="aw-layout-sidebar__content">

                <nav class="aw-menu  js-menu">
                    <ul class="aw-menu__list">

                        <li class="aw-menu__item">
                            <a href="#"><i class="fa  fa-fw  fa-home"></i><span>Dashboard</span></a>
                        </li>

                        <li class="aw-menu__item  is-active">
                            <a href="#">
                                <i class="fa  fa-fw  fa-file-text"></i><span>Cadastros</span>
                                <i class="aw-menu__navigation-icon  fa"></i>
                            </a>

                            <ul class="aw-menu__list  aw-menu__list--sublist">
                                <li class="aw-menu__item  aw-menu__item--link"><a href="#">Item ...</a></li>
                                
                            </ul>
                        </li>
                    </ul>
                </nav>

            </div>
        </aside>

        <section class="aw-layout-content  js-content">


            <div class="page-header">
                <div class="container-fluid">
                    <h1>
                        Cadastro de produto
                    </h1>
                </div>
            </div>

            <div class="container-fluid">
                <h1>Conteúdo</h1>
            </div>


        </section>

        <footer class="aw-layout-footer  js-content">
            <div class="container-fluid">
                <span class="aw-footer-disclaimer">&copy; 2017 Double Jota. Todos os direitos reservados.</span>
            </div>
        </footer>

    </div>

    <div class="aw-search-modal  js-search-modal">
        <form action="#" class="aw-search-modal__form">
            <input class="aw-search-modal__input  js-search-modal-input" type="text" placeholder="O que você está procurando?" />
            <div class="aw-search-modal__input-icon">
                <i class="glyphicon  glyphicon-search  js-search-modal-go"></i>
            </div>
        </form>

        <div class="aw-search-modal__controls">
            <i class="glyphicon glyphicon-remove  js-search-modal-close"></i>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/javascript/vendors.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/algaworks.min.js"></script>

</body>

</html>