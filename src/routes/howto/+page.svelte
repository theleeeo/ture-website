<script lang="ts">
	import HowToStep from './HowToStep.svelte';
	import ImageModal from '$lib/ImageModal.svelte';

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
			image: '/img/öl.jpg'
		},
		{
			title: 'Shorts är inte byxor',
			description:
				'Det är inte ens värt att försöka övertala honom om att shorts visst är byxor. Han kommer inte lyssna. Han kommer inte bry sig. Han kommer inte ändra sig. Det är inte värt försöket, pojken har bestämt sig.',
			image: ''
		},
		{
			title: 'Följ inte med till vattnet',
			description:
				'"Ska vi gå och bada?" kanske låter trevligt men nej! Fall inte för det! Håll dig säker på torra land, annars kommer du få en syn du sent kommer glömma.',
			image: '/img/rumpa.jpg'
		}
	];

	let showModal = false;
	let modalImageSrc: string;

	async function showModalFunc(event: any) {
		showModal = true;
		modalImageSrc = event.detail.src;
	}
</script>

{#if showModal}
	<ImageModal
		on:hide={() => {
			showModal = false;
		}}
	>
		{#if modalImageSrc.endsWith('.mp4')}
			<video src={modalImageSrc} controls>
				<track kind="captions" />
			</video>
		{:else}
			<img src={modalImageSrc} alt="Ture" />
		{/if}
	</ImageModal>
{/if}

<div>
	<h1>Hur du överlever en dag med Ture:</h1>
	{#each steps as { title, description, image }, i}
		<HowToStep on:show={showModalFunc} {title} {description} {image} />
	{/each}
</div>

<style>
	h1 {
		text-align: center;
		color: #333;
		margin: 2rem;
	}
</style>
