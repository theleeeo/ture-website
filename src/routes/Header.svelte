<script>
	import { page } from '$app/stores';
</script>

<header>
	<nav>
		<ul>
			<li id="home-link" aria-current={$page.url.pathname === '/' ? 'page' : undefined}>
				<a href="/">Home</a>
			</li>
			<li aria-current={$page.url.pathname === '/faq' ? 'page' : undefined}>
				<a href="/faq">FAQ</a>
			</li>
			<li aria-current={$page.url.pathname === '/howto' ? 'page' : undefined}>
				<a href="/howto">How To</a>
			</li>
			<li aria-current={$page.url.pathname === '/secret' ? 'page' : undefined}>
				<a href="/secret">Secret</a>
			</li>
		</ul>
		<img class="header-img" src="/img/ture_2.jpg" alt="Ture" />
	</nav>
</header>

<style>
	#home-link {
		--color-theme-1: var(--color-theme-2);
	}
	#home-link a {
		font-size: calc(var(--text-size) * 1.3);
	}

	.header-img {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: var(--height);
		object-fit: fill;
		z-index: -1;

		opacity: 0.7;

		box-shadow: 0 0 30px 5px rgba(0, 0, 0, 0.5);
	}

	header {
		display: flex;
		justify-content: space-between;
	}

	nav {
		display: flex;
		justify-content: center;
		--height: 8em;

		margin: auto;
	}

	ul {
		position: relative;
		padding: 0;
		margin: 0;
		height: var(--height);
		display: flex;
		justify-content: center;
		align-items: center;
		list-style: none;
		background-size: contain;
		gap: 1.3em;
		row-gap: 0;
	}

	li {
		position: relative;
		height: 100%;
	}

	nav a {
		--text-size: 1.5rem;

		display: flex;
		height: 100%;
		align-items: center;
		padding: 0 0.5rem;
		color: var(--color-text);
		font-weight: 700;
		font-size: var(--text-size);
		text-transform: uppercase;
		letter-spacing: 0.1em;
		text-decoration: none;
		transition: color 0.2s linear;
	}

	a:hover {
		color: var(--color-theme-1);
	}

	header {
		display: flex;
		justify-content: space-between;
	}

	@media (min-width: 600px) {
		li[aria-current='page']::before {
			--size: 24px;
			content: '';
			width: 0;
			height: 0;
			position: absolute;
			top: 0;
			left: calc(50% - var(--size));
			border: var(--size) solid transparent;
			border-top: var(--size) solid var(--color-theme-1);
		}
	}

	@media (max-width: 599px) {
		ul {
			flex-wrap: wrap;
		}

		li {
			height: 50%;
		}

		nav a {
			--text-size: 1.2rem;
		}
	}
</style>
