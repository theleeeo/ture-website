<script>
	export let title = 'Step title';
	export let description = 'Step description';
	export let image = ''; // Optional: Path to an image if needed
</script>

<div class="step">
	<div class="step-header">
		<h2>{title}</h2>
	</div>
	<p>{description}</p>
	{#if image}
		<img src={image} alt={title} class="step-image" />
	{/if}
</div>

<style>
	.step {
		margin-bottom: 2rem;
		padding: 1rem;
		border-left: 4px solid var(--color-theme-1);
		background-color: #f9f9f9;
	}
	.step-header h2 {
		margin: 0 0 1rem 0;
		color: var(--color-theme-1);
	}
	.step-image {
		height: 30rem;
		margin-bottom: 1em;
		margin-top: 1em;
	}
</style>
