<script>
	import FaqItem from './FaqItem.svelte';

	let faqs = [
		{
			question: 'Blev han tappad som liten?',
			answer:
				'Fram tills Ture fyllde 6 bodde han med en flock gätter, allt stångande har gjort honom lite vimsig.'
		},
		{
			question: 'Skämtar han eller är han verkligen såhär?',
			answer: 'Detta är den Ture vi är fast med så vi får göra den bästa av situationen.'
		},
		{
			question: 'Kan han spela Wonderwall?',
			answer: 'Det är hans favoritlåt att spela. Be honom spela den nästa gång du träffar honom!'
		},
		{
			question: 'Vilka är Tures favorit tår?',
			answer: 'Andras…'
		},
		{
			question: 'Hur många laxar i en laxask?',
			answer: '6'
		}
	];
</script>

<div>
	<h1>Frequently Asked Questions</h1>
	{#each faqs as { question, answer }}
		<FaqItem {question} {answer} />
	{/each}
</div>

<style>
	h1 {
		text-align: center;
		color: #333;

		margin: 1rem;
	}

	div {
		/* display: flex;
    flex-direction: column;
    align-items: center; */

		width: 80%;
	}
</style>
