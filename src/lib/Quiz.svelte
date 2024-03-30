<script lang="ts">
	import { fade } from 'svelte/transition';

	export let question: string;
	export let options: string[];
	export let answer: string;

	let selectedOption = '';
	let showFeedback = false;

	function selectOption(option: any) {
		selectedOption = option;
		showFeedback = true;
	}

	function resetQuiz() {
		selectedOption = '';
		showFeedback = false;
	}
</script>

<div class="quiz-container">
	<div class="question">{question}</div>
	<div class="options">
		{#each options as option}
			<button
				class:correct={showFeedback && option === answer && option === selectedOption}
				class:wrong={showFeedback && option !== answer && option === selectedOption}
				on:click={() => selectOption(option)}
				disabled={showFeedback}
			>
				{option}
			</button>
		{/each}
	</div>
	{#if showFeedback}
		<p transition:fade class="feedback">
			{selectedOption === answer ? 'Correct!' : 'Incorrect!'}
		</p>
		<button on:click={resetQuiz} class="reset-button">Try Again</button>
	{/if}
</div>

<style>
	.quiz-container {
		max-width: 80%;
		margin: auto;
		padding: 1.2em;
		border-radius: 0.5em;
		box-shadow: 0 0.3em 0.6em rgba(0, 0, 0, 0.1);
		background: white;
	}
	.question {
		font-size: 20px;
		margin-bottom: 20px;
	}
	.options button {
		display: block;
		width: 100%;
		padding: 0.6em 0.8em;
		margin: 0.6em 0;
		font-size: 1em;
		color: #333;
		background-color: #f9f9f9;
		border: 1px solid #ddd;
		border-radius: 0.3em;
		transition: all 0.3s ease;
	}
	.options button.correct {
		background-color: #e9ffe8;
		border-color: #28a745;
	}
	.options button.wrong {
		background-color: #ffecec;
		border-color: #dc3545;
	}
	.feedback {
		margin-top: 1.2em;
		font-weight: bold;
	}
	.reset-button {
		display: block;
		width: 100%;
		padding: 0.6em 0.8em;
		margin-top: 1.2em;
		background-color: var(--color-theme-2);
		color: white;
		border: none;
		border-radius: 0.3em;
		font-size: 1em;
		cursor: pointer;
	}
	.reset-button:hover {
		background-color: #0900b3;
	}
</style>
