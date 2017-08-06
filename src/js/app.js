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
s.path("M 137.471 189.99C 16.293 119.994 -7.68733 55.9971 1.89732 0L 1394.41 0C 1394.41 0 1370.86 99.2197 1365.68 163.992C 1356.87 274.114 1446.36 303.761 1388.25 405.979C 1361.49 453.042 1337.93 469.976 1290.18 476.976C 1221.68 487.017 1202.9 463.82 1152.08 481.475C 1090.9 502.725 1092.44 561.439 1026.79 587.97C 952.63 617.941 892.98 574.447 814.729 591.97C 730.669 610.793 704.311 646.321 618.073 647.967C 453.701 651.105 501.004 429.978 379.826 417.979C 258.649 405.979 258.649 259.987 137.471 189.99Z");

// Homepage Swiper
const swiper = new Swiper('.swiper-container', {
  keyboardControl: true,
  a11y: true,
  mousewheelControl: true,
  mousewheelSensitivity: 3,
  hashnav: true,
  speed: 1000,
  loop: true,
  loopAdditionalSlides: 2,
  // freeMode: true,
  onInit: (slider) => {
    // First slide animation logic
    const logo = document.getElementsByClassName('logo-svg')[0];
    const hpContent = document.getElementsByClassName('hp-slide1-content');
    const slideOneText = document.getElementsByClassName('hp-slide1__text')[0];

    if (slider.activeIndex === 3) {
      logo.classList.add('ready-to-animate');

      slideOneText.classList.add('ready-to-animate');

      slider.params.allowSwipeToPrev = false;
      slider.params.allowSwipeToNext = false;

      setTimeout(() => {
        logo.classList.remove('ready-to-animate');
        navButton.classList.remove('hide');

        setTimeout(() => {
          slideOneText.classList.remove('ready-to-animate');

          slider.params.allowSwipeToPrev = true;
          slider.params.allowSwipeToNext = true;
        }, 1600);
      }, 2500);
    } else {
      navButton.classList.remove('hide');
    }

    logo.classList.remove('dn');
    logo.classList.add('db');

    for (let i = 0; i < hpContent.length; i += 1) {
      hpContent[i].classList.remove('dn');
    }
  }
});

// Next slide
const nextSlideButton = document.getElementsByClassName('next-slide');

Array.from(nextSlideButton).forEach((element) => {
  element.addEventListener('click', nextSlide);
});

function nextSlide() {
  swiper.slideNext();
}
