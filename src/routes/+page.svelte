<script lang="ts">
	import ImageModal from '$lib/ImageModal.svelte';
	import Carousel from '$lib/Carousel.svelte';
	import collages from './collages.json';

	let showModal = false;
	let modalData: { carouselId: number; imageId: number } = { carouselId: 0, imageId: 0 };
	let modalImage: { src: string; alt?: string } = { src: '' };

	async function showModalFunc(event: any) {
		showModal = true;
		modalData = event.detail;
		modalImage = collages[modalData.carouselId].images[modalData.imageId];
	}

	let isMusicPlaying = false;

	function playMusic() {
		const musicPlayer = document.getElementById('music-player') as HTMLVideoElement;
		musicPlayer.play();
		isMusicPlaying = true;
	}
</script>

<video
	style="display: {isMusicPlaying ? 'block' : 'none'};"
	id="music-player"
	src="/mov/lefishe.mp4"
	controls
	loop
>
	<track kind="captions" />
</video>

{#if showModal}
	<ImageModal
		on:hide={() => {
			showModal = false;
		}}
		on:previous={() => {
			modalData.imageId =
				modalData.imageId === 0
					? collages[modalData.carouselId].images.length - 1
					: modalData.imageId - 1;
			modalImage = collages[modalData.carouselId].images[modalData.imageId];
		}}
		on:next={() => {
			modalData.imageId =
				modalData.imageId === collages[modalData.carouselId].images.length - 1
					? 0
					: modalData.imageId + 1;
			modalImage = collages[modalData.carouselId].images[modalData.imageId];
		}}
	>
		{#if modalImage.src.endsWith('.mp4')}
			<video src={modalImage.src} controls>
				<track kind="captions" />
			</video>
		{:else}
			<img src={modalImage.src} alt={modalImage.alt} />
		{/if}
	</ImageModal>
{/if}

<div class="text-region">
	<p>
		Detta är inte bara en historia, det är en resa och ett äventyr. En mans resa genom ett liv av
		spänning, mod och nakenhet. Detta är berättelsen om en man ett stort hjärta och små kalsonger.
		En man som skulle göra allt för att komma dit han vill (McDonalds). Detta är varken en hymn
		eller homage utan en återblick på bättre tider. Välkommen till Tures liv.
	</p>

	<p><i>He va bättre förr</i> - Karl Ture Miderfjäll</p>
</div>

{#if !isMusicPlaying}
	<button class="default-button-hollow" on:click={playMusic}>
		Press here for background music</button
	>
{/if}

<div class="text-region">
	<p>Once upon a time var Ture i Hemavan. För det mesta så var det...</p>
</div>

<h2 class="text-xl m-4 italic text-[--color-theme-1]">{collages[1].title}</h2>
<Carousel images={collages[1].images} id={1} on:show={showModalFunc} />

<div class="text-region">
	<p>Men ibland så måste man ta sig en kisspaus</p>
</div>

<h2 class="text-xl m-4 italic text-[--color-theme-1]">{collages[2].title}</h2>
<Carousel images={collages[2].images} id={2} on:show={showModalFunc} />

<div class="text-region">
	<p>Ture och Leo gillar att åka vattenskooter tillsammans och <s>pussas</s> vara straight</p>
</div>

<h2 class="text-xl m-4 italic text-[--color-theme-1]">{collages[3].title}</h2>
<Carousel images={collages[3].images} id={3} on:show={showModalFunc} />

<div class="text-region">
	<p>Det finns en typ av vattenskooter som fungerar i snö. Den kallas för en snöskooter.</p>
	<p>En sådan kan Ture och hans vänner också åka på.</p>
</div>

<h2 class="text-xl m-4 italic text-[--color-theme-1]">{collages[0].title}</h2>
<Carousel images={collages[0].images} id={0} on:show={showModalFunc} />

<a class="default-button" href="https://www.youtube.com/watch?v=2qBlE2-WL60">Press me!</a>
<a class="default-button" href="https://www.youtube.com/watch?v=2qBlE2-WL60">Press me!</a>
<a class="default-button" href="https://www.youtube.com/watch?v=2qBlE2-WL60">Press me!</a>
<a class="default-button" href="https://www.youtube.com/watch?v=2qBlE2-WL60">Press me!</a>
<a class="default-button" href="https://www.youtube.com/watch?v=2qBlE2-WL60">Press me!</a>
<a class="default-button" href="https://www.youtube.com/watch?v=2qBlE2-WL60">Press me!</a>
<a class="default-button" href="https://www.youtube.com/watch?v=2qBlE2-WL60">Press me!</a>
<a class="default-button" href="https://www.youtube.com/watch?v=2qBlE2-WL60">Press me!</a>

<div class="text-region">
	<p>Få är lika fotogeniska som Ture, han är som gjord för kameran.</p>
	<p>Viste ni att Ture var med och grundade Vogue?</p>
</div>

<h2 class="text-xl m-4 italic text-[--color-theme-1]">{collages[4].title}</h2>
<Carousel images={collages[4].images} id={4} on:show={showModalFunc} />

<div class="text-region">
	<p>Låt mig berätta er en historia:</p>
	<p>
		Det var en gång en varm höstkväll på en lägergård, långt långt borta. Där levde det en man vid
		namn Ture tillsammans med sina kompanjoner. Tillsammans så hade de en dröm, en dröm om att ingen
		människa någonsin skulle behöva dö utan att ha fått se Tures håriga rumpa.
	</p>
	<p>
		En mörk kväll bestämde de sig för att uppfylla den roll de hade fötts till utföra på denna jord.
		De begav sig ned till vattnet, en romantisk natt i månljuset, för att bevilja världens önskan om
		att få se Ture naken.
	</p>
	<p>
		De ställde upp Ture i månljuset, anlitade en professionell fotograf (Det var Leo, han är sämst),
		och resten är historia.
	</p>
</div>

<h2 class="text-xl m-4 italic text-[--color-theme-1]">{collages[5].title}</h2>
<Carousel images={collages[5].images} id={5} on:show={showModalFunc} />

<style>
	.default-button-hollow {
		margin: 1rem;
		padding: 1rem 2rem;
		border: 2px solid var(--color-theme-2);
		border-radius: 1rem;
		color: var(--color-theme-2);
	}

	.default-button {
		margin: 1rem;
		padding: 1rem 2rem;
		border: 2px solid var(--color-theme-2);
		border-radius: 1rem;
		background-color: var(--color-theme-2);
		color: white;
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

	.text-region {
		margin: 1rem;
	}

	.text-region p {
		margin: 1rem 0;
		text-align: center;
	}

	a {
		text-align: center;
		display: block;
		margin: 1rem;

		border: 1px solid var(--color-theme-2);
		border-radius: 1rem;
		padding: 1rem 3rem;
		background-color: var(--color-theme-2);

		text-decoration: none;
		color: white;

		box-shadow: 0 10px 30px 3px rgba(0, 0, 0, 0.2);
	}
</style>
