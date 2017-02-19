	<div class="aw-layout-loading  js-loading-overlay">
		<div class="aw-layout-loading__container">
			<span class="aw-balls-spinner">Carregando...</span>
		</div>
	</div>

	<!-- INICIO - NAV BAR -->
	<div class="aw-layout-page">

		<nav
			class="navbar  navbar-fixed-top  navbar-default  js-sticky-reference"
			id="main-navbar">
			<div class="container-fluid">

				<div class="navbar-header">
					<a class="navbar-brand  hidden-xs" href="#"> <img
						alt="Reservado para logo"
						style="max-width: 130px; max-height: 100px"
						src="${pageContext.request.contextPath}/images/hackathon-white.png" />
					</a>

					<ul class="nav  navbar-nav">
						<li><a href="#" class="js-sidebar-toggle"><i
								class="fa  fa-bars"></i></a></li>
					</ul>
				</div>

				<ul class="nav navbar-nav  navbar-right">

					<li><a href="/usuario/deslogar"><em class="fa  fa-sign-out"></em></a>
					</li>
				</ul>

			</div>
		</nav>
		<!-- FIM - NAV BAR -->
		<!-- INICIO - SIDE BAR -->
		<aside class="aw-layout-sidebar  js-sidebar">
			<div class="aw-layout-sidebar__content">

				<nav class="aw-menu  js-menu">
					<ul class="aw-menu__list">

						<li class="aw-menu__item"><a href="/usuario/home"><i
								class="fa  fa-fw  fa-home"></i><span>Página inicial</span></a></li>
	
							<li class="aw-menu__item  is-active"><a href="#"> <i
								class="fa  fa-fw  fa-file-text"></i><span>Fórum</span> <i
								class="aw-menu__navigation-icon  fa"></i>
						</a>

							<ul class="aw-menu__list  aw-menu__list--sublist">
								<li class="aw-menu__item  aw-menu__item--link"><a href="/topico/todasAsCategorias">Todas as categorias</a></li>
								<li class="aw-menu__item  aw-menu__item--link"><a href="/topico/minhasCategorias">Minhas categorias</a></li>
							</ul></li>								
								
						<li class="aw-menu__item"><a href="/usuario/meuPerfil"><i
								class="fa  fa-fw  fa-home"></i><span>Meu Perfil</span></a></li>								

					</ul>
				</nav>

			</div>
		</aside>
		