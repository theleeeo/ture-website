<script lang="ts">
	export let desc: string;
	export let choices: string[];
	export let correct: number;

	let guess: number | undefined = undefined;
</script>

<div class="quiz">
	<p>{desc}</p>

	<div class="choice-buttons">
		{#each choices as c, i}
			<button
				class="choice{guess === i ? (guess === correct ? '-correct' : '-wrong') : ''}"
				on:click={() => {
					guess = i;
				}}>{c}</button
			>
		{/each}
	</div>
</div>

<style>
	.choice-correct {
		background-color: rgb(3, 214, 3);
	}

	.choice-wrong {
		background-color: red;
	}

	.choice {
		color: var(--color-theme-2);
	}

	.quiz {
		display: flex;
		flex-direction: column;
		align-items: center;

		border: 2px solid var(--color-theme-2);
		border-radius: 0.5rem;
	}

	p {
		margin: 1rem;

		font-size: 1.3rem;
		text-align: center;
	}

	.choice-buttons {
		display: flex;
		flex-direction: row;
		align-items: center;
	}

	button {
		background-color: transparent;
		border: 2px solid var(--color-theme-2);
		border-radius: 0.5rem;
		cursor: pointer;
		font-size: 1rem;
		font-weight: bold;
		margin: 0.5rem;
		padding: 0.5rem 1rem;
		text-transform: uppercase;
		transition:
			background-color 0.3s,
			color 0.3s;
	}

	.choice:hover {
		background-color: var(--color-theme-2);
		color: white;
	}
</style>
