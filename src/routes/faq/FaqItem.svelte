<script>
	export let question = '';
	export let answer = '';
	let isOpen = false;
</script>

<button class="faq-item" on:click={() => (isOpen = !isOpen)}>
	<button class="question"
		>{question}
		<span class="toggle-icon">{isOpen ? '−' : '+'}</span>
	</button>
	{#if isOpen}
		<div class="answer">{answer}</div>
	{/if}
</button>

<style>
	.faq-item {
		width: 100%;
		border-bottom: 1px solid #ccc;
		cursor: pointer;
	}
	.question {
		background: none;
		border: none;
		width: 100%;
		text-align: left;
		padding: 15px;
		font-size: 18px;
		font-weight: bold;
		color: #333;
	}
	.toggle-icon {
		float: right;
	}
	.answer {
		padding: 15px;
		font-size: 16px;
		color: #666;
		text-align: left;
	}
</style>
