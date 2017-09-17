const navTrigger = document.getElementsByClassName('nav-button')[0];

// Service variables setup
var serviceAnimation = null;
var triggeredServices = false;

// Homepage Swiper
var swiper = null;
var homeAnimation = null;
var triggeredHomeAnimation = false;

var desktopFlag = false;

function generateSwiper(viewport) {
  function swiperOnInit(slider) {
    // Animate slide 1 word list
    const homepageWords = document.querySelectorAll('.hp-slide1__headline .wordList span');
    if (!homeAnimation) loopAnimation(true, triggeredHomeAnimation, 'home', homepageWords);
    // Animate services copy list
    const services = document.getElementsByClassName('services-list')[0];
    const servicesTitle = document.getElementsByClassName('services-title');
    if (!serviceAnimation) loopAnimation(true, triggeredServices, 'service', servicesTitle);

    nextSlideLinks();
  }

  function swiperOnSlideChangeStart(slider) {
  }

  var swiperAttributes = {};

  const swiperDesktopAttributes = {
    keyboardControl: true,
    a11y: true,
    mousewheelControl: true,
    hashnav: true,
    speed: 1000,
    loop: true,
    onInit: (slider) => swiperOnInit(slider)
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
    onInit: (slider) => swiperOnInit(slider)
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


// Global function for animated text loop
function loopAnimation(shouldRun, intervalTrigger, interval, elems) {
  if (shouldRun && !intervalTrigger) {
    if (interval === 'home') {
      homeAnimation = setInterval(() => {
        animation();
      }, 4000);
    } else {
      serviceAnimation = setInterval(() => {
        animation();
      }, 4000);
    }

    function animation() {
      const activeItem = [];
      for (var i = 0; i < elems.length; i += 1) {
        const item = elems[i];

        if (item.classList.contains('fadeIn')) {
          // Animate current text block out
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
      }, 1500);
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
  const screenSize = getBreakpoints();

  if (!slide1DesktopFlag) {
    const duplicateSlide = document.querySelectorAll('.hp-slide1.swiper-slide-duplicate .hp-slide1__shape svg')[0];

    if (!duplicateSlide) {
      const slide1 = document.getElementsByClassName('hp-slide1__shape');

      var slide1_b = new Two({
        type: Two.Types['svg'],
        width: 1000
      }).appendTo(slide1[1]);

      shapeAnimation(slide1_b, '#fff', slide1_b.height / 2, slide1_b.height / 2);
    }
  }

  // First slide
  if ((screenSize === 'xlarge' || screenSize === 'large') && !slide1DesktopFlag) {
    const slide1 = document.getElementsByClassName('hp-slide1__shape');

    var slide1_a = new Two({
      type: Two.Types['svg'],
      width: 1000
    }).appendTo(slide1[0]);

    shapeAnimation(slide1_a, '#fff', slide1_a.height / 2, slide1_a.height / 2);

    slide1DesktopFlag = true;
  } else if ((screenSize !== 'xlarge' && screenSize !== 'large') && slide1DesktopFlag) {
    const slide1_shapes = document.querySelectorAll('.hp-slide1:not(.swiper-slide-duplicate) .hp-slide1__shape svg')[0];

    if (slide1_shapes) slide1_shapes.parentNode.removeChild(slide1_shapes);

    slide1DesktopFlag = false;
  }

  // Featured Case Studies
  const case2 = document.querySelectorAll('.feat-case-study__slide.slide-2 .feat-case-study__slide__shape')[0];
  const case2Shape = document.querySelectorAll('.feat-case-study__slide.slide-2 .feat-case-study__slide__shape svg')[0];

  if ((screenSize === 'xlarge' || screenSize === 'large') && !case2Shape) {
    var case2_shape = new Two({
      type: Two.Types['svg'],
      width: 1000,
      height: 550
    }).appendTo(case2);

    shapeAnimation(case2_shape, '#fff', case2_shape.width / 2.25, case2_shape.height / 2);
  } else if ((screenSize !== 'xlarge' && screenSize !== 'large') && case2Shape) {
    case2Shape.parentNode.removeChild(case2Shape);
  }

  if (!caseStudyDesktopFlag) {
    const case1 = document.querySelectorAll('.feat-case-study__slide.slide-1 .feat-case-study__slide__shape')[0];
    const case3 = document.querySelectorAll('.feat-case-study__slide.slide-3 .feat-case-study__slide__shape')[0];

    var case1_shape = new Two({
      type: Two.Types['svg'],
      width: 1125
    }).appendTo(case1);

    var case3_shape = new Two({
      type: Two.Types['svg'],
      width: 1000
    }).appendTo(case3);

    shapeAnimation(case1_shape, '#fff', case1_shape.width / 3.3, case1_shape.height / 2.25);
    shapeAnimation(case3_shape, '#fff', case3_shape.width / 2.1, case3_shape.height / 2.15);

    caseStudyDesktopFlag = true;
  }

  // Services
  if((screenSize === 'xlarge' || screenSize === 'large' || screenSize === 'medium') && !servicesDesktopFlag) {
    const services = document.querySelectorAll('.services-list .services__shape')[0];

    var services_shape = new Two({
      type: Two.Types['svg'],
      width: 1400
    }).appendTo(services);

    shapeAnimation(services_shape, '#000', services_shape.width / 2.5, services_shape.height / 2);

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
}

function shapeAnimation(shape, shapeColor, shapeRadiusX, shapeRadiusY) {
  shape.renderer.domElement.style.overflow = "visible";

  var mass = 100;
  var radiusX = shapeRadiusX;
  var radiusY = shapeRadiusY;
  var strength = 0.003;
  var drag = 0.0;

  var background = shape.makeGroup();
  var foreground = shape.makeGroup();

  var physics = new Physics();
  var points = [];
  var i = 0;

  for (i = 0; i < 11; i++) {

    var pct = i / 11;
    var theta = pct * Math.PI * 2;

    var ax = radiusX * Math.cos(theta);
    var ay = radiusY * Math.sin(theta);

    var varianceX = Math.random() * 0.3 + 0.7;
    var varianceY = Math.random() * 0.5 + 0.5;
    var bx = varianceX * ax;
    var by = varianceY * ay;

    var origin = physics.makeParticle(mass, ax, ay)
    var particle = physics.makeParticle(Math.random() * mass * 0.66 + mass * 0.33, bx, by);
    var spring = physics.makeSpring(particle, origin, strength, drag, 0);

    origin.makeFixed();

    particle.shape = shape.makeCircle(particle.position.x, particle.position.y, 1);
    particle.shape.noStroke().fill = shapeColor;
    particle.position = particle.shape.translation;

    foreground.add(particle.shape)
    points.push(particle.position);

  }

  var outer = new Two.Path(points, true, true);
  var color = shapeColor;
  outer.fill = color;
  outer.scale = 1.15;
  outer.linewidth = 0;

  background.add(outer);

  resize();

  shape
    .bind('resize', resize)
    .bind('update', function() {
      physics.update();
    })
    .play();

    function resize() {
      background.translation.set(shape.width / 2, shape.height / 2);
      foreground.translation.copy(background.translation);
    }
}

// Setup page and resize functions
(function() {
  modifySwiper();
  generateContent();
  generateShapes();
})();

window.addEventListener('resize', () => {
  modifySwiper();
  generateContent();
  generateShapes();
});
