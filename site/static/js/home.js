const navButton = document.getElementsByClassName('nav-button')[0];

// Homepage Swiper
let swiper = null;

// Next slide
const nextSlideButton = document.getElementsByClassName('next-slide');

Array.from(nextSlideButton).forEach((element) => {
  element.addEventListener('click', nextSlide);
});

function nextSlide() {
  swiper.slideNext();
}

// Something about this desktopFlag is not right my friends.
let desktopFlag = false;

function generateSwiper(viewport) {
  function swiperOnInit(slider) {
    console.log('yoooo');
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

  let swiperAttributes = {};

  const swiperDesktopAttributes = {
    keyboardControl: true,
    a11y: true,
    mousewheelControl: true,
    mousewheelSensitivity: 3,
    hashnav: true,
    speed: 1000,
    loop: true,
    loopAdditionalSlides: 2,
    onInit: (slider) => swiperOnInit(slider)
  };

  let swiperMobileAttributes = null;
  if (viewport === 'mobile') {
    swiperMobileAttributes = JSON.parse(JSON.stringify(swiperDesktopAttributes));
    swiperMobileAttributes.direction = 'vertical';
    swiperMobileAttributes.onInit = (slider) => swiperOnInit(slider);

    swiperAttributes = swiperMobileAttributes;
  } else {
    swiperAttributes = swiperDesktopAttributes;
  }

  swiper = new Swiper('.swiper-container', swiperAttributes);
}

function modifySwiper() {
  const screenSize = getBreakpoints();

  if (screenSize === 'xlarge' || screenSize === 'large') {
    if ((swiper !== null && desktopFlag) ||
    (swiper === null && !desktopFlag)) {
      const container = document.getElementsByTagName('html')[0];

      container.classList.remove('mobile-swiper');

      if (swiper !== null) swiper.destroy(true, true);

      generateSwiper('desktop');
    }

    desktopFlag = false;
  }

  if (screenSize !== 'xlarge' && screenSize !== 'large') {
    if (!desktopFlag) {
      const container = document.getElementsByTagName('html')[0];

      container.classList.add('mobile-swiper');
      if (swiper !== null) swiper.destroy(true, true);

      generateSwiper('mobile');
    }

    desktopFlag = true;
  }
}

// Homepage video/poster on first slide
(function() {
  modifySwiper();
  generateContent();
})();

window.addEventListener('resize', () => {
  modifySwiper();
  generateContent();
});

function generateContent() {
  const screenSize = getBreakpoints();

  if ((screenSize === 'xlarge' || screenSize === 'large')) {
    // generate video
    const video = document.getElementsByClassName('hp-video');

    for (var i = 0; i < video.length; i++) {
      video[i].setAttribute('autoplay', true);
    }

    // remove image
    const image = document.getElementsByClassName('hp-image');

    for (var i = 0; i < image.length; i++) {
      image[i].classList.add('dn');
    }
  }

  if ((screenSize !== 'xlarge' && screenSize !== 'large')) {
    // generate image
    const image = document.getElementsByClassName('hp-image');

    for (var i = 0; i < image.length; i++) {
      image[i].classList.remove('dn');
    }

    // remove video
    const video = document.getElementsByClassName('hp-video');

    for (var i = 0; i < video.length; i++) {
      video[i].removeAttribute('autoplay');
    }
  }
}

function getBreakpoints() {
  const windowWidth = window.innerWidth;

  const breakpoints = {
    xlarge: '1200',
    large: '992',
    medium: '768',
    small: '576',
    xs: '0'
  };

  const breakpointValues = Object.keys(breakpoints).map((key) => {
    return breakpoints[key];
  });

  const breakpointValue = breakpointValues.find((element) => {
    return windowWidth > element;
  });

  return Object.keys(breakpoints).find((key) => { return breakpoints[key] === breakpointValue; });
}
