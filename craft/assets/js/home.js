const navTrigger = document.getElementsByClassName('nav-button')[0];

// Service variables setup
let serviceAnimation = null;
let triggered = false;

// Homepage Swiper
let swiper = null;

let desktopFlag = false;

function generateSwiper(viewport) {
  function swiperOnInit(slider) {
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
        navTrigger.style.opacity = 1;

        setTimeout(() => {
          for (let i = 0; i < slideOneText.length; i += 1) {
            slideOneText[i].classList.remove('ready-to-animate');
          }

          slider.params.allowSwipeToPrev = true;
          slider.params.allowSwipeToNext = true;
        }, 1600);
      }, 2500);
    } else {
      navTrigger.style.opacity = 1;
    }

    logo.style.display = 'block';

    for (let o = 0; o < hpContent.length; o += 1) {
      hpContent[o].classList.remove('dn');
    }
  }

  function swiperOnSlideChangeStart(slider) {
    // Animate services list in
    const services = document.getElementsByClassName('services-list')[0];

    if (slider.activeIndex === 7) {
      loopServices(true);
    } else {
      loopServices(false);
    }
  }

  let swiperAttributes = {};

  const swiperDesktopAttributes = {
    keyboardControl: true,
    a11y: true,
    mousewheelControl: true,
    hashnav: true,
    speed: 600,
    loop: true,
    loopAdditionalSlides: 2,
    onInit: (slider) => swiperOnInit(slider),
    onSlideChangeStart: (slider) => swiperOnSlideChangeStart(slider)
  };

  const swiperMobileAttributes = {
    keyboardControl: true,
    a11y: true,
    mousewheelControl: true,
    mousewheelSensitivity: 3,
    direction: 'vertical',
    hashnav: true,
    speed: 1000,
    loop: true,
    loopAdditionalSlides: 2,
    onInit: (slider) => swiperOnInit(slider),
    onSlideChangeStart: (slider) => swiperOnSlideChangeStart(slider)
  };

  if (viewport === 'mobile') {
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
      if (swiper !== null) swiper.destroy(true, true);

      generateSwiper('desktop');
    }

    desktopFlag = false;
  }

  if (screenSize !== 'xlarge' && screenSize !== 'large') {
    if (!desktopFlag) {
      if (swiper !== null) swiper.destroy(true, true);

      generateSwiper('mobile');
    }

    desktopFlag = true;
  }
}

// Next slide
const nextSlideButton = document.getElementsByClassName('next-slide');

Array.from(nextSlideButton).forEach((element) => {
  element.addEventListener('click', nextSlide);
});

function nextSlide() {
  swiper.slideNext();
}

// Homepage navigation link triggers
const links = document.querySelectorAll('.nav__links .link');

Array.from(links).forEach((element) => {
  element.addEventListener('click', () => {
    navigateToSlide(element.getAttribute('data-slide'));
  });
});

function navigateToSlide(slideIndex) {
  const navOverlay = document.getElementsByClassName('nav-overlay')[0],
        body = document.getElementsByTagName('body')[0];

  body.classList.remove('open');
  navOverlay.classList.remove('nav-open');

  swiper.slideTo(Number(slideIndex) + 3, 0);
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


//Slides Text Fade
function loopServices(trigger) {
  const servicesTitle = document.getElementsByClassName('services-title');
  if (trigger && !triggered) {
    serviceAnimation = setInterval(() => {
      for (let i = 0; i < servicesTitle.length; i += 1) {
        const service = servicesTitle[i];

        if (service.classList.contains('fadeIn')) {
          // Animate current text block out
          service.classList.add('fadeOut');
          setTimeout(() => {
            // Wait till that animation is done before doing the next part
            const nextSlide = servicesTitle[i + 1] ? servicesTitle[i + 1] : servicesTitle[0];

            // Animate next slide in
            nextSlide.classList.add('fadeIn');
            // Remove fadeIn from current slide as it's no longer necessary
            service.classList.remove('fadeIn');
            service.classList.remove('fadeOut');
          }, 1500);
        }
      }
    }, 4000);

    triggered = true;
  } else {
    clearInterval(serviceAnimation);

    triggered = false;
  }
}
