<script>
	import HowToStep from './HowToStep.svelte';

	let steps = [
		{
			title: 'Ha på dig skor',
			description:
				'Det är väldigt viktigt att alltid bära skydd om sina fötter. Strumpor är ett måste, skor är start rekomenderat. Du vill inte riskera att Ture får syn på dina bara fötter...',
			image: ''
		},
		{
			title: 'Mata honom',
			description:
				'Se till att han alltid är mätt och belåten. Om han inte är det kan han bli hangry och det vill du inte vara med om.',
			image: '/img/viking.jpg'
		},
		{
			title: 'Air-freshener',
			description:
				'Ha alltid en air-freshener nära till hands. Ture är väldigt bra på att prutta och han är inte rädd för att använda det emot dig, se upp!',
			image: ''
		},
		{
			title: 'Vin = Glad',
			description:
				'Om stackarn blir ledsen, ge honom ett glas vin eller en kall öl. Då ska du se att han fort blir glad igen. En glad Ture är en bra Ture.',
			image: ''
		}
	];
</script>

<div>
	<h1>Hur du överlever en dag med Ture:</h1>
	{#each steps as { title, description, image }, i}
		<HowToStep {title} {description} {image} />
	{/each}
</div>

<style>
	div {
	}

	h1 {
		text-align: center;
		color: #333;
		margin: 2rem;
	}
</style>
