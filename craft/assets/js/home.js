const navTrigger = document.getElementsByClassName('nav-button')[0];

// Shape variables setup
var slide1_a, slide1_b, case1_shape, case2_shape, case3_shape, services_shape = null;

const shapes = {
  shape_1: null,
  shape_15: null,
  shape_2: null,
  shape_3: null,
  shape_4: null,
  shape_5: null
}

// Service variables setup
var serviceAnimation = null;
var triggeredServices = false;

// Homepage Swiper
var swiper = null;
var homeAnimation = null;
var homeAnimation2 = null;
var triggeredHomeAnimation = false;
var triggeredHomeAnimation2 = false;

var desktopFlag = false;

function generateSwiper(viewport) {
  function swiperOnInit(slider) {
    const logo = document.getElementsByClassName('logo-svg')[0];
    const hpContent = document.getElementsByClassName('hp-slide1-content');
    const slideOneText = document.getElementsByClassName('hp-slide1__text');
    const slideOneOverlay = document.getElementsByClassName('hp-slide1__overlay');

    // const video = document.querySelectorAll('.swiper-slide-active video');
    // if (video) {
    //   alert(video.length)
    //   if (video.length > 1) {
    //     alert(video[1].getAttribute('src'))
    //     video[1].play();
    //   } else {
    //     video[0].play();
    //   }
    // }

    if (slider.activeIndex === 1) {
      hidePrev();

      for (var i = 0; i < slideOneText.length; i++) {
        slideOneText[i].classList.add('ready-to-animate');
      }

      for (var i = 0; i < slideOneOverlay.length; i++) {
        slideOneOverlay[i].classList.add('ready-to-animate');
      }

      slider.params.allowSwipeToPrev = false;
      slider.params.allowSwipeToNext = false;

      setTimeout(() => {
        logo.classList.add('visible');
      }, 500);

        for (var i = 0; i < slideOneOverlay.length; i += 1) {
          slideOneOverlay[i].classList.remove('ready-to-animate');
        }
        navTrigger.style.opacity = 1;

        setTimeout(() => {
          for (var i = 0; i < slideOneText.length; i += 1) {
            slideOneText[i].classList.remove('ready-to-animate');
          }


          slider.params.allowSwipeToPrev = true;
          slider.params.allowSwipeToNext = true;

          // Animate slide 1 word list
          const homepageWords = document.querySelectorAll('.swiper-slide-active .hp-slide1__headline .wordList span');
          if (!homeAnimation) loopAnimation(true, triggeredHomeAnimation, 'home', homepageWords);
        }, 1600);
    } else {
      navTrigger.style.opacity = 1;
      showPrev();
    }

    logo.style.display = 'block';

    for (var o = 0; o < hpContent.length; o += 1) {
      hpContent[o].classList.remove('dn');
    }

    // Animate services copy list
    const services = document.getElementsByClassName('services-list')[0];
    const servicesTitle = document.getElementsByClassName('services-title');
    if (!serviceAnimation && slider.activeIndex === 5) loopAnimation(true, triggeredServices, 'service', servicesTitle);

    nextSlideLinks();
    prevSlideLinks();
  }

  function swiperOnSlideChangeStart(slider) {
    const video = document.querySelectorAll('.swiper-slide-active video');
    if (video) {
      const hpVid = document.querySelectorAll('.hp-slide1 video')[0];
      hpVid.pause();

      video[0].play();
    }

    if (slider.activeIndex === 1 || slider.activeIndex === 15) {
      hidePrev();
    } else {
      showPrev();
    }

    if (slider.activeIndex === 15) {
      // Animate duplicated slide 1 word list
      const homepageWords = document.querySelectorAll('.swiper-slide-active .hp-slide1__headline .wordList span');
      if (!homeAnimation2) loopAnimation(true, triggeredHomeAnimation2, 'home2', homepageWords);
    }

    if (shapes[`shape_${slider.previousIndex}`]) controlAnimation(shapes[`shape_${slider.previousIndex}`], true);
    if (shapes[`shape_${slider.activeIndex}`]) controlAnimation(shapes[`shape_${slider.activeIndex}`]);

    const prevVideo = document.querySelectorAll('.swiper-slide-prev video')[0];

    if (prevVideo) {
      var isPlaying = prevVideo.currentTime > 0 && !prevVideo.paused && !prevVideo.ended
          && prevVideo.readyState > 2;

      if (isPlaying) {
        prevVideo.pause();
      }
    }

    if (serviceAnimation && slider.previousIndex === 5) clearInterval(serviceAnimation)

    const servicesTitle = document.getElementsByClassName('services-title');
    if (!serviceAnimation && slider.activeIndex === 5) loopAnimation(true, triggeredServices, 'service', servicesTitle);
  }

  var swiperAttributes = {};

  const swiperDesktopAttributes = {
    keyboardControl: true,
    a11y: true,
    mousewheelControl: false,
    simulateTouch: false,
    hashnav: true,
    speed: 1000,
    loop: true,
    onInit: (slider) => swiperOnInit(slider),
    onSlideChangeStart: (slider) => swiperOnSlideChangeStart(slider)
  };

  const swiperMobileAttributes = {
    keyboardControl: true,
    a11y: true,
    mousewheelControl: true,
    mousewheelSensitivity: 3,
    simulateTouch: true,
    direction: 'vertical',
    hashnav: true,
    speed: 1000,
    loop: true,
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
function nextSlideLinks() {
  const nextSlideButton = document.querySelectorAll('.next-slide');

  Array.from(nextSlideButton).forEach((element) => {
    element.addEventListener('click', () => {
      nextSlide();
    });
  });

  function nextSlide() {
    swiper.slideNext();
  }
}

// Prev slide
function prevSlideLinks() {
  const prevSlideButton = document.querySelectorAll('.prev-slide');

  Array.from(prevSlideButton).forEach((element) => {
    element.addEventListener('click', () => {
      prevSlide();
    });
  });

  function prevSlide() {
    swiper.slidePrev();
  }
}


const prev = document.getElementsByClassName('prev-slide')[0];

// Hide prev
function hidePrev() {
  prev.classList.add('fade-out');
}

// Show prev
function showPrev() {
  prev.classList.remove('fade-out');
}


// Homepage navigation link triggers
const links = document.querySelectorAll('.nav__links [data-slide]');

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

  swiper.slideTo(Number(slideIndex), 0);
}

// Show service list
const showServices = document.getElementsByClassName('services-list__link');

Array.from(showServices).forEach((element) => {
  element.addEventListener('click', showServiceDetails);
});

function showServiceDetails() {
  const services = document.getElementsByClassName('services-list__content');
  for (var i = 0; i < services.length; i++) {
    if (services[i].classList.contains('visible')) {
      services[i].classList.remove('visible');
    } else {
      services[i].classList.add('visible');
    }
  }
}

// Homepage video/poster on first slide
function generateContent() {
  const screenSize = getBreakpoints();

  if ((screenSize === 'xlarge' || screenSize === 'large')) {
    // generate video
    const video = document.getElementsByClassName('hp-video');

    for (var i = 0; i < video.length; i++) {
      const src = video[i].getAttribute('data-src');
      video[i].setAttribute('src', src);
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
      video[i].removeAttribute('src');
    }
  }
}

// Global function for animated text loop
function loopAnimation(shouldRun, intervalTrigger, interval, elems) {
  if (shouldRun && !intervalTrigger) {
    if (interval === 'home') {
      homeAnimation = setInterval(() => {
        slideAnimation();
      }, 4000);
    } else if (interval === 'home2') {
      homeAnimation2 = setInterval(() => {
        slideAnimation();
      }, 4000);
    } else {
      serviceAnimation = setInterval(() => {
        slideAnimation();
      }, 6000);
    }

    function slideAnimation() {
      const activeItem = [];
      for (var i = 0; i < elems.length; i += 1) {
        const item = elems[i];

        if (item.classList.contains('fadeIn')) {
          // Animate current text block out
          item.classList.remove('fadeIn');
          item.classList.add('fadeOut');

          activeItem.push(item);
          activeItem.push(elems[i + 1] ? elems[i + 1] : elems[0])
        }
      }

      setTimeout(() => {
        for (var i = 0; i < activeItem.length; i += 2) {
          // Wait till that animation is done before doing the next part
          const nextSlide = activeItem[i + 1];

          // Animate next slide in
          nextSlide.classList.add('fadeIn');
          // Remove fadeIn from current slide as it's no longer necessary
          activeItem[i].classList.remove('fadeIn', 'fadeOut');
        }
      }, 800);
    }

    intervalTrigger = true;
  } else {
    if (interval === 'home') {
      clearInterval(homeAnimation);
    } else if (interval === 'home2') {
      clearInterval(homeAnimation2);
    } else {
      clearInterval(serviceAnimation);
    }

    intervalTrigger = false;
  }
}


// Shape flags
var slide1DesktopFlag = false;
var caseStudyDesktopFlag = false;
var servicesDesktopFlag = false;

// Shapes
function generateShapes() {
  const screenSize = getBreakpoints();

  if (!slide1DesktopFlag) {
    const duplicateSlide = document.querySelectorAll('.hp-slide1.swiper-slide-duplicate .hp-slide1__shape svg')[0];

    if (!duplicateSlide) {
      const slide1 = document.getElementsByClassName('hp-slide1__shape');

      shapes.shape_15 = new Two({
        type: Two.Types['svg'],
        width: 1000
      }).appendTo(slide1[1]);

      const slide1Elem = {
        shape: shapes.shape_15,
        shapeColor: '#fff',
        shapeRadiusX: shapes.shape_15.height / 2,
        shapeRadiusY: shapes.shape_15.height / 2,
        shapePoints: 8
      };

      physicsAnimation(slide1Elem);
      controlAnimation(shapes.shape_15, true);
    }
  }

  // First slide
  if ((screenSize === 'xlarge' || screenSize === 'large') && !slide1DesktopFlag) {
    const slide1 = document.getElementsByClassName('hp-slide1__shape');

    shapes.shape_1 = new Two({
      type: Two.Types['svg'],
      width: 1000
    }).appendTo(slide1[0]);

    const shape1Elem = {
      shape: shapes.shape_1,
      shapeColor: '#fff',
      shapeRadiusX: shapes.shape_1.height / 2,
      shapeRadiusY: shapes.shape_1.height / 2,
      shapePoints: 8
    };

    physicsAnimation(shape1Elem);
    controlAnimation(shapes.shape_1, true);

    slide1DesktopFlag = true;
  } else if ((screenSize !== 'xlarge' && screenSize !== 'large') && slide1DesktopFlag) {
    const slide1_shapes = document.querySelectorAll('.hp-slide1:not(.swiper-slide-duplicate) .hp-slide1__shape svg')[0];

    if (slide1_shapes) slide1_shapes.parentNode.removeChild(slide1_shapes);

    slide1DesktopFlag = false;
  }

  // Featured Case Studies
  if (!caseStudyDesktopFlag) {
    const case1 = document.querySelectorAll('.feat-case-study__slide.slide-1 .feat-case-study__slide__shape')[0];
    const case2 = document.querySelectorAll('.feat-case-study__slide.slide-2 .feat-case-study__slide__shape')[0];
    const case3 = document.querySelectorAll('.feat-case-study__slide.slide-3 .feat-case-study__slide__shape')[0];

    shapes.shape_2 = new Two({
      type: Two.Types['svg'],
      width: 1125
    }).appendTo(case1);

    shapes.shape_3 = new Two({
      type: Two.Types['svg'],
      width: 1125,
    }).appendTo(case2);

    shapes.shape_4 = new Two({
      type: Two.Types['svg'],
      width: 1125
    }).appendTo(case3);

    const slide2Elem = {
      shape: shapes.shape_2,
      shapeColor: case1.dataset.color,
      shapeRadiusX: shapes.shape_2.width / 3,
      shapeRadiusY: shapes.shape_2.height / 2,
      shapePoints: 10,
      gradient: true
    };
    const slide3Elem = {
      shape: shapes.shape_3,
      shapeColor: case2.dataset.color,
      shapeRadiusX: shapes.shape_3.width / 3,
      shapeRadiusY: shapes.shape_3.height / 2,
      shapePoints: 10,
      gradient: true
    };
    const slide4Elem = {
      shape: shapes.shape_4,
      shapeColor: case3.dataset.color,
      shapeRadiusX: shapes.shape_4.width / 3,
      shapeRadiusY: shapes.shape_4.height / 2,
      shapePoints: 10,
      gradient: true
    };

    physicsAnimation(slide2Elem);
    controlAnimation(shapes.shape_2, true);
    physicsAnimation(slide3Elem);
    controlAnimation(shapes.shape_3, true);
    physicsAnimation(slide4Elem);
    controlAnimation(shapes.shape_4, true);

    caseStudyDesktopFlag = true;
  }

  // Services
  if((screenSize === 'xlarge' || screenSize === 'large' || screenSize === 'medium') && !servicesDesktopFlag) {
    const services = document.querySelectorAll('.services-list .services__shape')[0];

    shapes.shape_5 = new Two({
      type: Two.Types['svg'],
      width: 1125
    }).appendTo(services);

    const servicesElem = {
      shape: shapes.shape_5,
      shapeColor: '#F62944',
      shapeRadiusX: shapes.shape_5.width / 3,
      shapeRadiusY: shapes.shape_5.height / 2,
      shapePoints: 10,
      gradient: true
    };

    physicsAnimation(servicesElem);
    controlAnimation(shapes.shape_5, true);

    servicesDesktopFlag = true;
  } else if ((screenSize !== 'xlarge' && screenSize !== 'large' && screenSize !== 'medium') && servicesDesktopFlag) {
    const services_shapes = document.querySelectorAll('.services__shape svg:not(.mobile)');

    if (services_shapes) {
      for (var i = 0; i < services_shapes.length; i++) {
        services_shapes[i].parentNode.removeChild(services_shapes[i]);
      }
    }

    servicesDesktopFlag = false;
  }

  setTimeout(() => {
    if (shapes[`shape_${swiper.activeIndex}`]) controlAnimation(shapes[`shape_${swiper.activeIndex}`]);
  }, 1000);
}

// Setup page and resize functions
(function() {
  modifySwiper();
  generateShapes();
  generateContent();
})();

window.addEventListener('resize', () => {
  modifySwiper();
  generateShapes();
  generateContent();
});
