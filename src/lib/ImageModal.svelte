<script lang="ts">
	import { createEventDispatcher } from 'svelte';

	const dispatch = createEventDispatcher();

	function on_key_down(event: KeyboardEvent) {
		if (event.key === 'Escape') {
			dispatch('hide', {});
		} else if (event.key === 'ArrowRight') {
			dispatch('next', {});
		} else if (event.key === 'ArrowLeft') {
			dispatch('previous', {});
		}
	}
</script>

<svelte:window on:keydown={on_key_down} />

<div class="modal">
	<!-- The Close Button -->
	<button class="close" on:click={() => dispatch('hide', {})}>&times;</button>

	<div class="modal-content">
		<slot />
	</div>
</div>

<style>
	.modal {
		position: fixed;
		z-index: 1;

		left: 0;
		top: 0;
		width: 100%;
		height: 100%;

		background-color: rgb(0, 0, 0); /* Fallback color */
		background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
	}

	.modal-content {
		display: flex;
		justify-content: center;
		align-items: center;

		height: 100%;

		animation-name: zoom;
		animation-duration: 0.3s;
	}

	.modal-content :global(img) {
		display: block;

		max-height: 80%;
		max-width: 80%;
	}

	@keyframes zoom {
		from {
			transform: scale(0);
		}
		to {
			transform: scale(1);
		}
	}

	/* The Close Button */
	.close {
		position: absolute;
		top: 15px;
		right: 35px;
		color: rgb(255, 69, 69);

		font-size: 60px;
		font-weight: bold;
		text-align: center;

		border: none;
		border-radius: 20%;

		transition: 0.2s;

		width: 50px;
		height: 50px;
		line-height: 50px;

		padding: 0;
	}

	.close:hover {
		color: #763737;
		text-decoration: none;
		cursor: pointer;
	}
	.close:focus {
		color: #763737;
		text-decoration: none;
		cursor: pointer;
	}

	/* 100% Image Width on Smaller Screens */
	@media only screen and (max-width: 700px) {
		.modal-content {
			width: 100%;
		}
	}
</style>
