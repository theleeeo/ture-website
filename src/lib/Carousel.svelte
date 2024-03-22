<script lang="ts">
	import * as Carousel from '$lib/components/ui/carousel/index.js';
	import { createEventDispatcher } from 'svelte';

	const dispatch = createEventDispatcher();

	export let id: number;
	export let images: { src: string; alt: string }[];
</script>

<Carousel.Root
	class="w-full border rounded-xl p-4 bg-white bg-opacity-50 max-w-[80%] md:max-w-full mb-20"
>
	<Carousel.Content class="items-center">
		{#each images as image, i}
			<Carousel.Item class="basis-[100%] sm:basis-1/2 md:basis-1/3 lg:basis-1/4 xl:basis-1/5">
				<button
					class="w-full h-full"
					on:click={() => {
						dispatch('show', { carouselId: id, imageId: i });
					}}
				>
					<img src={image.src} alt={image.alt} class="rounded-lg max-h-40 m-auto object-contain" />
				</button>
			</Carousel.Item>
		{/each}
	</Carousel.Content>
	<Carousel.Previous />
	<Carousel.Next />
</Carousel.Root>
