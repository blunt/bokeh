// Navigation
const navButton = document.getElementsByClassName('nav-button')[0],
      nav = document.getElementById('nav'),
      body = document.getElementsByTagName('body')[0];

navButton.addEventListener("click", openNav);

function openNav() {
  if (body.classList.contains('open')) {
    body.classList.remove('open');
  } else {
    body.classList.add('open');
  }
}

// Navigation SVG BG
const s = Snap('#nav-bg');
s.path("M91.358 198c-92.8-24-97.334-142-88-198H1389.36v80s-16.63 11.268-26 20c-124.62 116.095 56.59 243.777 0 346-26.06 47.066-59 64-105.5 71-66.71 10.042-114.63-9.126-172.5 9-63.53 19.897-79.07 76.876-141.502 100-66.579 24.661-114.953 2.671-186.5 18-88.347 18.929-128.63 98.38-217.091 79.994C428.406 700.745 327.664 682.499 367.358 488c40-196-160-260-276-290z");

// Homepage Swiper
const swiper = new Swiper('.swiper-container', {
  keyboardControl: true,
  a11y: true,
  mousewheelControl: true,
  hashnav: true,
  speed: 2000,
  // whatSlidesProgress: true,
  // watchSlidesVisibility: true,
  // freeMode: true
  onSlideChangeStart: (slider) => {
    console.log(slider);
    const slide = document.getElementsByClassName('feat-case-study__slide--animate')[0];
    if (slide) slide.classList.remove('feat-case-study__slide--animate');
  },
  onSlideChangeEnd: (slider) => {
    const slide = document.getElementsByClassName(`slide-${slider.activeIndex + 1}`)[0];
    slide.classList.add('feat-case-study__slide--animate');
  }
});
