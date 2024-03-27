<script lang="ts">
	import * as Carousel from '$lib/components/ui/carousel/index.js';
	import { createEventDispatcher } from 'svelte';

	const dispatch = createEventDispatcher();

	export let id: number;
	export let images: { src: string; alt?: string }[];
</script>

<Carousel.Root class="mb-10 w-full max-w-[80%] rounded-xl border bg-white bg-opacity-50 p-4">
	<Carousel.Content class="items-center">
		{#each images as image, i}
			<Carousel.Item class="basis-[100%] sm:basis-1/2 md:basis-1/3 lg:basis-1/4 xl:basis-1/5">
				<button
					class="h-full w-full"
					on:click={() => {
						dispatch('show', { carouselId: id, imageId: i });
					}}
				>
					<img
						src={image.src}
						alt={image.alt || 'Ture'}
						class="m-auto max-h-40 rounded-lg object-contain"
					/>
				</button>
			</Carousel.Item>
		{/each}
	</Carousel.Content>
	<Carousel.Previous />
	<Carousel.Next />
</Carousel.Root>
