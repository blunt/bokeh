'use strict';

var navTrigger = document.getElementsByClassName('nav-button')[0];

// Shape variables setup
var slide1_a,
    slide1_b,
    case1_shape,
    case2_shape,
    case3_shape,
    services_shape = null;

var shapes = {
  shape_1: null,
  shape_15: null,
  shape_2: null,
  shape_3: null,
  shape_4: null,
  shape_5: null

  // Service variables setup
};var serviceAnimation = null;
var triggeredServices = false;

// Homepage Swiper
var swiper = null;
var homeAnimation = null;
var triggeredHomeAnimation = false;

var desktopFlag = false;

function generateSwiper(viewport) {
  function swiperOnInit(slider) {
    var logo = document.getElementsByClassName('logo-svg')[0];
    var hpContent = document.getElementsByClassName('hp-slide1-content');
    var slideOneText = document.getElementsByClassName('hp-slide1__text');
    var slideOneOverlay = document.getElementsByClassName('hp-slide1__overlay');

    var video = document.querySelectorAll('.swiper-slide-active video')[0];

    if (video) {
      video.play();
    }

    if (slider.activeIndex === 1) {

      for (var i = 0; i < slideOneText.length; i++) {
        slideOneText[i].classList.add('ready-to-animate');
      }

      for (var i = 0; i < slideOneOverlay.length; i++) {
        slideOneOverlay[i].classList.add('ready-to-animate');
      }

      slider.params.allowSwipeToPrev = false;
      slider.params.allowSwipeToNext = false;

      setTimeout(function () {
        logo.classList.add('visible');
      }, 500);

      for (var i = 0; i < slideOneOverlay.length; i += 1) {
        slideOneOverlay[i].classList.remove('ready-to-animate');
      }
      navTrigger.style.opacity = 1;

      setTimeout(function () {
        for (var i = 0; i < slideOneText.length; i += 1) {
          slideOneText[i].classList.remove('ready-to-animate');
        }

        slider.params.allowSwipeToPrev = true;
        slider.params.allowSwipeToNext = true;

        // Animate slide 1 word list
        var homepageWords = document.querySelectorAll('.hp-slide1__headline .wordList span');
        if (!homeAnimation) loopAnimation(true, triggeredHomeAnimation, 'home', homepageWords);
      }, 1600);
    } else {
      navTrigger.style.opacity = 1;
    }

    logo.style.display = 'block';

    for (var o = 0; o < hpContent.length; o += 1) {
      hpContent[o].classList.remove('dn');
    }

    // Animate services copy list
    var services = document.getElementsByClassName('services-list')[0];
    var servicesTitle = document.getElementsByClassName('services-title');
    if (!serviceAnimation && slider.activeIndex === 5) loopAnimation(true, triggeredServices, 'service', servicesTitle);

    nextSlideLinks();
  }

  function swiperOnSlideChangeStart(slider) {
    var video = document.querySelectorAll('.swiper-slide-active video')[0];

    if (shapes['shape_' + slider.previousIndex]) controlAnimation(shapes['shape_' + slider.previousIndex], true);
    if (shapes['shape_' + slider.activeIndex]) controlAnimation(shapes['shape_' + slider.activeIndex]);

    if (video) {
      video.load();
      setTimeout(function () {
        video.play();
      }, 1000);
    }

    var prevVideo = document.querySelectorAll('.swiper-slide-prev video')[0];

    if (prevVideo) {
      var isPlaying = prevVideo.currentTime > 0 && !prevVideo.paused && !prevVideo.ended && prevVideo.readyState > 2;

      if (isPlaying) {
        prevVideo.pause();
        prevVideo.currentTime = 0;
      }
    }

    if (serviceAnimation && slider.previousIndex === 5) clearInterval(serviceAnimation);

    var servicesTitle = document.getElementsByClassName('services-title');
    if (!serviceAnimation && slider.activeIndex === 5) loopAnimation(true, triggeredServices, 'service', servicesTitle);
  }

  var swiperAttributes = {};

  var swiperDesktopAttributes = {
    keyboardControl: true,
    a11y: true,
    mousewheelControl: true,
    hashnav: true,
    speed: 1000,
    loop: true,
    onInit: function onInit(slider) {
      return swiperOnInit(slider);
    },
    runCallbacksOnInit: false,
    onSlideChangeStart: function onSlideChangeStart(slider) {
      return swiperOnSlideChangeStart(slider);
    }
  };

  var swiperMobileAttributes = {
    keyboardControl: true,
    a11y: true,
    mousewheelControl: true,
    mousewheelSensitivity: 3,
    direction: 'vertical',
    hashnav: true,
    speed: 1000,
    loop: true,
    onInit: function onInit(slider) {
      return swiperOnInit(slider);
    },
    runCallbacksOnInit: false,
    onSlideChangeStart: function onSlideChangeStart(slider) {
      return swiperOnSlideChangeStart(slider);
    }
  };

  if (viewport === 'mobile') {
    swiperAttributes = swiperMobileAttributes;
  } else {
    swiperAttributes = swiperDesktopAttributes;
  }

  swiper = new Swiper('.swiper-container', swiperAttributes);
}

function modifySwiper() {
  var screenSize = getBreakpoints();

  if (screenSize === 'xlarge' || screenSize === 'large') {
    if (swiper !== null && desktopFlag || swiper === null && !desktopFlag) {
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
  var nextSlideButton = document.querySelectorAll('.next-slide');

  Array.from(nextSlideButton).forEach(function (element) {
    element.addEventListener('click', function () {
      nextSlide();
    });
  });

  function nextSlide() {
    swiper.slideNext();
  }
}

// Homepage navigation link triggers
var links = document.querySelectorAll('.nav__links .link');

Array.from(links).forEach(function (element) {
  element.addEventListener('click', function () {
    navigateToSlide(element.getAttribute('data-slide'));
  });
});

function navigateToSlide(slideIndex) {
  var navOverlay = document.getElementsByClassName('nav-overlay')[0],
      body = document.getElementsByTagName('body')[0];

  body.classList.remove('open');
  navOverlay.classList.remove('nav-open');

  swiper.slideTo(Number(slideIndex), 0);
}

// Show service list
var showServices = document.getElementsByClassName('services-list__link');

Array.from(showServices).forEach(function (element) {
  element.addEventListener('click', showServiceDetails);
});

function showServiceDetails() {
  var services = document.getElementsByClassName('services-list__content');
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
  var screenSize = getBreakpoints();

  if (screenSize === 'xlarge' || screenSize === 'large') {
    // generate video
    var video = document.getElementsByClassName('hp-video');

    for (var i = 0; i < video.length; i++) {
      var src = video[i].getAttribute('data-src');
      video[i].setAttribute('src', src);
    }

    // remove image
    var image = document.getElementsByClassName('hp-image');

    for (var i = 0; i < image.length; i++) {
      image[i].classList.add('dn');
    }
  }

  if (screenSize !== 'xlarge' && screenSize !== 'large') {
    // generate image
    var _image = document.getElementsByClassName('hp-image');

    for (var i = 0; i < _image.length; i++) {
      _image[i].classList.remove('dn');
    }

    // remove video
    var _video = document.getElementsByClassName('hp-video');

    for (var i = 0; i < _video.length; i++) {
      _video[i].removeAttribute('src');
    }
  }
}

// Global function for animated text loop
function loopAnimation(shouldRun, intervalTrigger, interval, elems) {
  if (shouldRun && !intervalTrigger) {
    var slideAnimation = function slideAnimation() {
      var activeItem = [];
      for (var i = 0; i < elems.length; i += 1) {
        var item = elems[i];

        if (item.classList.contains('fadeIn')) {
          // Animate current text block out
          item.classList.remove('fadeIn');
          item.classList.add('fadeOut');

          activeItem.push(item);
          activeItem.push(elems[i + 1] ? elems[i + 1] : elems[0]);
        }
      }

      setTimeout(function () {
        for (var i = 0; i < activeItem.length; i += 2) {
          // Wait till that animation is done before doing the next part
          var nextSlide = activeItem[i + 1];

          // Animate next slide in
          nextSlide.classList.add('fadeIn');
          // Remove fadeIn from current slide as it's no longer necessary
          activeItem[i].classList.remove('fadeIn', 'fadeOut');
        }
      }, 800);
    };

    if (interval === 'home') {
      homeAnimation = setInterval(function () {
        slideAnimation();
      }, 4000);
    } else {
      serviceAnimation = setInterval(function () {
        slideAnimation();
      }, 6000);
    }

    intervalTrigger = true;
  } else {
    if (interval === 'home') {
      clearInterval(homeAnimation);
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
  var screenSize = getBreakpoints();

  if (!slide1DesktopFlag) {
    var duplicateSlide = document.querySelectorAll('.hp-slide1.swiper-slide-duplicate .hp-slide1__shape svg')[0];

    if (!duplicateSlide) {
      var slide1 = document.getElementsByClassName('hp-slide1__shape');

      shapes.shape_15 = new Two({
        type: Two.Types['svg'],
        width: 1000
      }).appendTo(slide1[1]);

      physicsAnimation(shapes.shape_15, '#fff', shapes.shape_15.height / 2, shapes.shape_15.height / 2, 8);
      controlAnimation(shapes.shape_15, true);
    }
  }

  // First slide
  if ((screenSize === 'xlarge' || screenSize === 'large') && !slide1DesktopFlag) {
    var _slide = document.getElementsByClassName('hp-slide1__shape');

    shapes.shape_1 = new Two({
      type: Two.Types['svg'],
      width: 1000
    }).appendTo(_slide[0]);

    physicsAnimation(shapes.shape_1, '#fff', shapes.shape_1.height / 2, shapes.shape_1.height / 2, 8);
    controlAnimation(shapes.shape_1, true);

    slide1DesktopFlag = true;
  } else if (screenSize !== 'xlarge' && screenSize !== 'large' && slide1DesktopFlag) {
    var slide1_shapes = document.querySelectorAll('.hp-slide1:not(.swiper-slide-duplicate) .hp-slide1__shape svg')[0];

    if (slide1_shapes) slide1_shapes.parentNode.removeChild(slide1_shapes);

    slide1DesktopFlag = false;
  }

  // Featured Case Studies
  if (!caseStudyDesktopFlag) {
    var case1 = document.querySelectorAll('.feat-case-study__slide.slide-1 .feat-case-study__slide__shape')[0];
    var case2 = document.querySelectorAll('.feat-case-study__slide.slide-2 .feat-case-study__slide__shape')[0];
    var case3 = document.querySelectorAll('.feat-case-study__slide.slide-3 .feat-case-study__slide__shape')[0];

    shapes.shape_2 = new Two({
      type: Two.Types['svg'],
      width: 1125
    }).appendTo(case1);

    shapes.shape_3 = new Two({
      type: Two.Types['svg'],
      width: 1000,
      height: 550
    }).appendTo(case2);

    shapes.shape_4 = new Two({
      type: Two.Types['svg'],
      width: 1000
    }).appendTo(case3);

    physicsAnimation(shapes.shape_2, case1.dataset.color, shapes.shape_2.width / 3.5, shapes.shape_2.height / 3.5, 10, null, true);
    controlAnimation(shapes.shape_2, true);
    physicsAnimation(shapes.shape_3, case2.dataset.color, shapes.shape_3.width / 2.5, shapes.shape_3.height / 3.5, 10, null, true);
    controlAnimation(shapes.shape_3, true);
    physicsAnimation(shapes.shape_4, case3.dataset.color, shapes.shape_4.width / 2.75, shapes.shape_4.height / 3, 10, null, true);
    controlAnimation(shapes.shape_4, true);

    caseStudyDesktopFlag = true;
  }

  // Services
  if ((screenSize === 'xlarge' || screenSize === 'large' || screenSize === 'medium') && !servicesDesktopFlag) {
    var services = document.querySelectorAll('.services-list .services__shape')[0];

    shapes.shape_5 = new Two({
      type: Two.Types['svg'],
      width: 1400
    }).appendTo(services);

    physicsAnimation(shapes.shape_5, '#F62944', shapes.shape_5.width / 5, shapes.shape_5.height / 2, 10, null, true);
    controlAnimation(shapes.shape_5, true);

    servicesDesktopFlag = true;
  } else if (screenSize !== 'xlarge' && screenSize !== 'large' && screenSize !== 'medium' && servicesDesktopFlag) {
    var services_shapes = document.querySelectorAll('.services__shape svg:not(.mobile)');

    if (services_shapes) {
      for (var i = 0; i < services_shapes.length; i++) {
        services_shapes[i].parentNode.removeChild(services_shapes[i]);
      }
    }

    servicesDesktopFlag = false;
  }

  setTimeout(function () {
    if (shapes['shape_' + swiper.activeIndex]) controlAnimation(shapes['shape_' + swiper.activeIndex]);
  }, 1000);
}

// Setup page and resize functions
(function () {
  modifySwiper();
  generateShapes();
  generateContent();
})();

window.addEventListener('resize', function () {
  modifySwiper();
  generateShapes();
  generateContent();
});