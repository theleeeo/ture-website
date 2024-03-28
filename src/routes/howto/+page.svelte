<script>
	import HowToStep from './HowToStep.svelte';

	let steps = [
		{
			title: 'Ha på dig skor',
			description:
				'Det är väldigt viktigt att alltid bära skydd om sina fötter. Strumpor är ett måste, skor är start rekomenderat. Du vill inte riskera att Ture får syn på dina bara fötter... Ture när fötter:',
			image: '/img/fotture.jpg'
		},
		{
			title: 'Mata honom',
			description:
				'Se till att han alltid är mätt och belåten. Om han inte är det kan han bli hangry och det vill du inte vara med om.',
			image: '/img/farlig.jpg'
		},
		{
			title: 'Air-freshener',
			description:
				'Ha alltid en air-freshener nära till hands. Ture är väldigt bra på att prutta och han är inte rädd för att använda det emot dig, se upp!',
			image: ''
		},
		{
			title: 'Öl -> Glad',
			description:
				'Om stackarn blir ledsen, ge honom ett glas vin eller en kall öl. Då ska du se att han fort blir glad igen. En glad Ture är en bra Ture.',
			image: ''
		},
		{
			title: 'Shorts är inte byxor',
			description:
				'Det är inte ens värt att försöka övertala honom om att shorts visst är byxor. Han kommer inte lyssna. Han kommer inte bry sig. Han kommer inte ändra sig. Det är inte värt försöket, pojken har bestämt sig.',
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
