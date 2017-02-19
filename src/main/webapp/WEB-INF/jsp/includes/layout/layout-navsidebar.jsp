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

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> <i class="fa  fa-user"></i>
					</a>

						<ul class="dropdown-menu">
							<li>
								<div class="aw-logged-user">
									<img src="https://api.adorable.io/avatars/80/joaodascouves"
										width="80" height="80" alt="" class="aw-logged-user__picture" />
									<span class="aw-logged-user__name">Nome do usuario</span>
								</div>
							</li>
							<li role="separator" class="divider"></li>
							<li><a href="/usuario/meuPerfil">Meu perfil</a></li>
						</ul></li>

					<li><a href="login.html"><em class="fa  fa-sign-out"></em></a>
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
								<li class="aw-menu__item  aw-menu__item--link"><a href="/topico/todasAsCategorias">Categorias diversas</a></li>
								<li class="aw-menu__item  aw-menu__item--link"><a href="/topico/minhasCategorias">Minhas categorias</a></li>
								
							</ul></li>								
								
						<li class="aw-menu__item"><a href="/chat"><i
								class="fa  fa-fw  fa-home"></i><span>CHAT</span></a></li>								

					</ul>
				</nav>

			</div>
		</aside>
		