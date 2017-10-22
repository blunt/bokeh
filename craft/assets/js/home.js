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

function blendColors(c0, c1, p) {
    var f=parseInt(c0.slice(1),16),t=parseInt(c1.slice(1),16),R1=f>>16,G1=f>>8&0x00FF,B1=f&0x0000FF,R2=t>>16,G2=t>>8&0x00FF,B2=t&0x0000FF;
    return "#"+(0x1000000+(Math.round((R2-R1)*p)+R1)*0x10000+(Math.round((G2-G1)*p)+G1)*0x100+(Math.round((B2-B1)*p)+B1)).toString(16).slice(1);
}

function physicsAnimation(shape, shapeColor, shapeRadiusX, shapeRadiusY, shapePoints, speed, gradient) {
  shape.renderer.domElement.style.overflow = "visible";

  var mass = 100;
  var radiusX = shapeRadiusX;
  var radiusY = shapeRadiusY;
  var strength = speed ? speed : 0.03;
  var drag = 0.0;

  var background = shape.makeGroup();
  var foreground = shape.makeGroup();

  var physics = new Physics();
  var points = [];
  var i = 0;

  for (i = 0; i < shapePoints; i++) {

    var pct = i / shapePoints;
    var theta = pct * Math.PI * 2;

    var ax = radiusX * Math.cos(theta);
    var ay = radiusY * Math.sin(theta);

    var variance = Math.random() * (0.95 - 0.85) + 0.85;
    var bx = variance * ax;
    var by = variance * ay;

    var origin = physics.makeParticle(mass, ax, ay)
    var particle = physics.makeParticle(Math.random() * mass * 0.66 + mass * 0.33, bx, by);
    var spring = physics.makeSpring(particle, origin, strength, drag, 0);

    origin.makeFixed();

    particle.shape = shape.makeCircle(particle.position.x, particle.position.y, 1);

    particle.shape.noStroke().fill = 'rgba(255,255,255,0)';
    particle.position = particle.shape.translation;

    foreground.add(particle.shape)
    points.push(particle.position);

  }

  var linearGradient = shape.makeLinearGradient(
    - shape.width / 2, shape.height / 2,
    shape.width / 2, shape.height / 2,
    new Two.Stop(0, blendColors(shapeColor, '#000000', 0.3)),
    new Two.Stop(1, shapeColor),
  );

  var outer = new Two.Path(points, true, true);
  outer.fill = gradient ? linearGradient : shapeColor;
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

function controlAnimation(shape, pauseShape) {
  setTimeout(() => {
    if (pauseShape) {
      shape.pause();
    }
  }, 1000);

  if (!pauseShape) {
    shape.play();
  }
}


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
var triggeredHomeAnimation = false;

var desktopFlag = false;

function generateSwiper(viewport) {
  function swiperOnInit(slider) {
    const logo = document.getElementsByClassName('logo-svg')[0];
    const hpContent = document.getElementsByClassName('hp-slide1-content');
    const slideOneText = document.getElementsByClassName('hp-slide1__text');
    const slideOneOverlay = document.getElementsByClassName('hp-slide1__overlay');

    const video = document.querySelectorAll('.swiper-slide-active video')[0];

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
          const homepageWords = document.querySelectorAll('.hp-slide1__headline .wordList span');
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
    const services = document.getElementsByClassName('services-list')[0];
    const servicesTitle = document.getElementsByClassName('services-title');
    if (!serviceAnimation && slider.activeIndex === 5) loopAnimation(true, triggeredServices, 'service', servicesTitle);

    nextSlideLinks();
  }

  function swiperOnSlideChangeStart(slider) {
    const video = document.querySelectorAll('.swiper-slide-active video')[0];

    if (shapes[`shape_${slider.previousIndex}`]) controlAnimation(shapes[`shape_${slider.previousIndex}`], true);
    if (shapes[`shape_${slider.activeIndex}`]) controlAnimation(shapes[`shape_${slider.activeIndex}`]);

    if (video) {
      video.load();
      setTimeout(() => {
        video.play();
      }, 1000);
    }

    const prevVideo = document.querySelectorAll('.swiper-slide-prev video')[0];

    if (prevVideo) {
      var isPlaying = prevVideo.currentTime > 0 && !prevVideo.paused && !prevVideo.ended
          && prevVideo.readyState > 2;

      if (isPlaying) {
        prevVideo.pause();
        prevVideo.currentTime = 0;
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
    mousewheelControl: true,
    hashnav: true,
    speed: 1000,
    loop: true,
    onInit: (slider) => swiperOnInit(slider),
    runCallbacksOnInit: false,
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
    onInit: (slider) => swiperOnInit(slider),
    runCallbacksOnInit: false,
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

      physicsAnimation(shapes.shape_15, '#fff', shapes.shape_15.height / 2, shapes.shape_15.height / 2, 8);
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

    physicsAnimation(shapes.shape_1, '#fff', shapes.shape_1.height / 2, shapes.shape_1.height / 2, 8);
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
  if((screenSize === 'xlarge' || screenSize === 'large' || screenSize === 'medium') && !servicesDesktopFlag) {
    const services = document.querySelectorAll('.services-list .services__shape')[0];

    shapes.shape_5 = new Two({
      type: Two.Types['svg'],
      width: 1400
    }).appendTo(services);

    physicsAnimation(shapes.shape_5, '#F62944', shapes.shape_5.width / 5, shapes.shape_5.height / 2, 10, null, true);
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
