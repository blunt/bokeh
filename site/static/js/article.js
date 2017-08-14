// Article Swiper
const swiper = new Swiper('.article-swiper-container', {
  speed: 1000,
  loop: true,
  slidesPerView: 1.5,
  centeredSlides: true,
  spaceBetween: 50,
  nextButton: '.swiper-button-next',
  prevButton: '.swiper-button-prev',
  breakpoints: {
    680: {
      spaceBetween: 5,
    },
    1200: {
      spaceBetween: 15,
    }
  }
});
