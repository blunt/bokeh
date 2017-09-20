// Article Swiper
const swiper = new Swiper('.article-swiper-container', {
  speed: 1000,
  loop: true,
  slidesPerView: 1.25,
  centeredSlides: true,
  spaceBetween: 25,
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

// Load iframes after page Load
function init() {
  const vidDefer = document.getElementsByTagName('iframe');

  for (var i = 0; i < vidDefer.length; i += 1) {
    if(vidDefer[i].getAttribute('data-src')) {
      vidDefer[i].setAttribute('src',vidDefer[i].getAttribute('data-src'));
    }
  }
}

window.onload = init;
