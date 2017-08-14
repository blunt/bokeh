const navButton = document.getElementsByClassName('nav-button')[0];

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
  breakpoints: {
    640: {
    }
  },
  onInit: (slider) => {
    // First slide animation logic
    const logo = document.getElementsByClassName('logo-svg')[0];
    const hpContent = document.getElementsByClassName('hp-slide1-content');
    const slideOneText = document.getElementsByClassName('hp-slide1__text');

    if (slider.activeIndex === 3) {
      logo.classList.add('ready-to-animate');

      for (var i = 0; i < slideOneText.length; i++) {
        slideOneText[i].classList.add('ready-to-animate');
      }

      slider.params.allowSwipeToPrev = false;
      slider.params.allowSwipeToNext = false;

      setTimeout(() => {
        logo.classList.remove('ready-to-animate');
        navButton.style.opacity = 1;

        setTimeout(() => {
          for (let i = 0; i < slideOneText.length; i += 1) {
            slideOneText[i].classList.remove('ready-to-animate');
          }

          slider.params.allowSwipeToPrev = true;
          slider.params.allowSwipeToNext = true;
        }, 1600);
      }, 2500);
    } else {
      navButton.style.opacity = 1;
    }

    logo.style.display = 'block';

    for (let o = 0; o < hpContent.length; o += 1) {
      hpContent[o].classList.remove('dn');
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
