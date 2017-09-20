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

var heroShapeFlag = 'xs';
var heroWidth = 800;

var nextShapeFlag = 'xs';
var nextWidth = 800;

// Shapes
function generateShapes() {
  const screenSize = getBreakpoints();

  const heroShapeContainer = document.getElementsByClassName('case-study__shape')[0];
  const heroShapeExists = document.querySelectorAll('.case-study__shape svg')[0];

  if (screenSize === 'xlarge' && heroShapeFlag !== 'xlarge') {
    heroWidth = 3000;

    heroShapeFlag = 'xlarge';
  } else if (screenSize === 'large' && heroShapeFlag !== 'large') {
    heroWidth = 2000;

    heroShapeFlag = 'large';
  } else if (screenSize === 'medium' && heroShapeFlag !== 'medium') {
    heroWidth = 1500;

    heroShapeFlag = 'medium';
  } else if (((screenSize === 'xs' || screenSize === 'small') && heroShapeFlag !== 'xs') || (screenSize === 'xs' || screenSize === 'small') && !heroShapeExists) {
    heroWidth = 800;

    heroShapeFlag = 'xs';
  }

  if (heroShapeExists) heroShapeExists.parentNode.removeChild(heroShapeExists);

  var heroShape = new Two({
    type: Two.Types['svg'],
    width: heroWidth,
    height: 200
  }).appendTo(heroShapeContainer);

  physicsAnimation(heroShape, '#fff', heroShape.width, heroShape.height, 11);


  const nextShapeContainer = document.getElementsByClassName('next-case-study__shape')[0];
  const nextShapeExists = document.querySelectorAll('.next-case-study__shape svg')[0];

  if (screenSize === 'xlarge' && nextShapeFlag !== 'xlarge') {
    nextWidth = 3000;

    nextShapeFlag = 'xlarge';
  } else if (screenSize === 'large' && nextShapeFlag !== 'large') {
    nextWidth = 2000;

    nextShapeFlag = 'large';
  } else if (screenSize === 'medium' && nextShapeFlag !== 'medium') {
    nextWidth = 1500;

    nextShapeFlag = 'medium';
  } else if (((screenSize === 'xs' || screenSize === 'small') && nextShapeFlag !== 'xs') || (screenSize === 'xs' || screenSize === 'small') && !nextShapeExists) {
    nextWidth = 800;

    nextShapeFlag = 'xs';
  }

  if (nextShapeExists) nextShapeExists.parentNode.removeChild(nextShapeExists);

  var nextShape = new Two({
    type: Two.Types['svg'],
    width: nextWidth,
    height: 200
  }).appendTo(nextShapeContainer);

  physicsAnimation(nextShape, '#fff', nextShape.width, nextShape.height, 11);
}

// Trigger generateShapes()
(function() {
  generateShapes();
})();

window.addEventListener('resize', () => {
  generateShapes();
});
