<div class="w-[100vw] h-16 mt-10 mb-10 bg-[url('/img/ture_2.jpg')] bg-contain"></div>

<div class="w-[100vw] flex justify-center">
	<img
		class="spin-hue w-2/3 rounded-xl border-solid border-8 border-red-500 m-8"
		src="/img/bollar_1.jpg"
		alt="Ture"
	/>
</div>

<div class="w-[100vw] h-16 mt-10 mb-10 bg-[url('/img/ture_2.jpg')] bg-contain"></div>

<style>
	.spin-hue {
		animation: spin-hue-anim 1.5s linear infinite;
	}

	@keyframes spin-hue-anim {
		from {
			filter: hue-rotate(0deg);
		}
		to {
			filter: hue-rotate(360deg);
		}
	}
</style>
