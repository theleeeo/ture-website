<script lang="ts">
	import ImageModal from '$lib/ImageModal.svelte';
	import Carousel from '$lib/Carousel.svelte';

	let collages = [
		{
			title: 'Scootertur? Jajjebus',
			images: [
				{
					src: '/img/skoter/1.jpg',
					alt: 'Elias och ture fixar'
				},
				{
					src: '/img/skoter/2.jpg',
					alt: 'Ture och leo paråker'
				},
				{
					src: '/img/skoter/3.jpg',
					alt: 'Selfie med elias'
				},
				{
					src: '/img/skoter/4.jpg',
					alt: 'Fikapaus'
				},
				{
					src: '/img/skoter/5.jpg',
					alt: 'Tre coola grabbar'
				}
			]
		},
		{
			title: 'Ture är naken',
			images: [
				{
					src: '/img/Leo.webp',
					alt: 'Leo'
				},
				{
					src: '/img/bo.jpg',
					alt: 'Bo'
				},
				{
					src: '/img/mood.png',
					alt: 'Mood'
				},
				{
					src: '/img/svavare.jpg',
					alt: 'Svävare'
				}
			]
		}
	];

	let showModal = false;
	let modalData: { carouselId: number; imageId: number } = { carouselId: 0, imageId: 0 };
	let modalImage: { src: string; alt: string } = { src: '', alt: '' };

	async function showModalFunc(event: any) {
		showModal = true;
		modalData = event.detail;
		modalImage = collages[modalData.carouselId].images[modalData.imageId];
	}
</script>

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

{#each collages as collage, i}
	<h2 class="text-xl m-4 italic text-[--color-theme-1]">{collage.title}</h2>
	<Carousel images={collage.images} id={i} on:show={showModalFunc} />
{/each}

<style>
</style>
