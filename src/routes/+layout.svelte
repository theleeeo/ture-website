<script lang="ts">
	import '../app.pcss';
	import Header from './Header.svelte';
	import './styles.css';

	let isMusicPlaying = false;

	function playMusic() {
		const musicPlayer = document.getElementById('music-player') as HTMLVideoElement;
		musicPlayer.play();
		isMusicPlaying = true;
	}
</script>

<div class="app">
	<Header />

	<main>
		<video
			style="display: {isMusicPlaying ? 'block' : 'none'};"
			id="music-player"
			src="/mov/lefishe.mp4"
			controls
			loop
		>
			<track kind="captions" />
		</video>

		{#if !isMusicPlaying}
			<button class="default-button-hollow" on:click={playMusic}>
				Press here for background music</button
			>
		{/if}

		<slot />
	</main>

	<footer>
		<p>Powered by <a href="https://theleo.se">theleo.se</a></p>
	</footer>
</div>

<style>
	.default-button-hollow {
		margin: 1rem;
		padding: 1rem 2rem;
		border: 2px solid var(--color-theme-2);
		border-radius: 1rem;
		color: var(--color-theme-2);
	}

	#music-player {
		position: fixed;
		top: 0;
		right: 0;
		width: auto;
		height: 10rem;
		z-index: 1000;
		margin: 1rem;

		border: 2px solid var(--color-theme-2);
		border-radius: 1rem;
	}

	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
		width: 100%;
		max-width: 64rem;
		margin: 0 auto;
		box-sizing: border-box;
		align-items: center;
	}

	footer {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		padding: 12px;
	}

	footer a {
		font-weight: bold;
	}

	@media (min-width: 480px) {
		footer {
			padding: 12px 0;
		}
	}
</style>
