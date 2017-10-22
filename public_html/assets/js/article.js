'use strict';

// Article Swiper
var swiper = new Swiper('.article-swiper-container', {
  speed: 1000,
  loop: true,
  slidesPerView: 1.25,
  centeredSlides: true,
  spaceBetween: 25,
  nextButton: '.swiper-button-next',
  prevButton: '.swiper-button-prev',
  breakpoints: {
    680: {
      spaceBetween: 5
    },
    1200: {
      spaceBetween: 15
    }
  }
});

// Load iframes after page Load
function init() {
  var vidDefer = document.getElementsByTagName('iframe');

  for (var i = 0; i < vidDefer.length; i += 1) {
    if (vidDefer[i].getAttribute('data-src')) {
      vidDefer[i].setAttribute('src', vidDefer[i].getAttribute('data-src'));
    }
  }
}

window.onload = init;

var heroShapeFlag = 'xs';
var heroWidth = 800;

var nextShapeFlag = 'xs';
var nextWidth = 800;

var blockquoteShapeFlag = 'xs';
var blockquoteWidth = 800;

// Shapes
function generateShapes() {
  var screenSize = getBreakpoints();

  var heroShapeContainer = document.getElementsByClassName('case-study__shape')[0];
  var heroShapeExists = document.querySelectorAll('.case-study__shape svg')[0];

  if (screenSize === 'xlarge' && heroShapeFlag !== 'xlarge') {
    heroWidth = 3000;

    heroShapeFlag = 'xlarge';
  } else if (screenSize === 'large' && heroShapeFlag !== 'large') {
    heroWidth = 2000;

    heroShapeFlag = 'large';
  } else if (screenSize === 'medium' && heroShapeFlag !== 'medium') {
    heroWidth = 1500;

    heroShapeFlag = 'medium';
  } else if ((screenSize === 'xs' || screenSize === 'small') && heroShapeFlag !== 'xs' || (screenSize === 'xs' || screenSize === 'small') && !heroShapeExists) {
    heroWidth = 800;

    heroShapeFlag = 'xs';
  }

  if (heroShapeExists) heroShapeExists.parentNode.removeChild(heroShapeExists);

  var heroShape = new Two({
    type: Two.Types['svg'],
    width: heroWidth,
    height: 200
  }).appendTo(heroShapeContainer);

  physicsAnimation(heroShape, '#fff', heroShape.width, heroShape.height, 18, speed = 0.01);

  var nextShapeContainer = document.getElementsByClassName('next-case-study__shape')[0];
  var nextShapeExists = document.querySelectorAll('.next-case-study__shape svg')[0];

  if (screenSize === 'xlarge' && nextShapeFlag !== 'xlarge') {
    nextWidth = 3000;

    nextShapeFlag = 'xlarge';
  } else if (screenSize === 'large' && nextShapeFlag !== 'large') {
    nextWidth = 2000;

    nextShapeFlag = 'large';
  } else if (screenSize === 'medium' && nextShapeFlag !== 'medium') {
    nextWidth = 1500;

    nextShapeFlag = 'medium';
  } else if ((screenSize === 'xs' || screenSize === 'small') && nextShapeFlag !== 'xs' || (screenSize === 'xs' || screenSize === 'small') && !nextShapeExists) {
    nextWidth = 800;

    nextShapeFlag = 'xs';
  }

  if (nextShapeExists) nextShapeExists.parentNode.removeChild(nextShapeExists);

  var nextShape = new Two({
    type: Two.Types['svg'],
    width: nextWidth,
    height: 200
  }).appendTo(nextShapeContainer);

  physicsAnimation(nextShape, '#fff', nextShape.width, nextShape.height, 18, speed = 0.01);

  var blockquotes = document.querySelectorAll('blockquote:not(.no-shape)');

  for (var i = 0; i < blockquotes.length; i += 1) {
    var blockquote = blockquotes[i];

    var blockquoteTopShapeContainer = blockquote.getElementsByClassName('blockquote__shape--top')[0];
    var blockquoteTopShapeExists = blockquote.querySelectorAll('.blockquote__shape--top svg')[0];
    var blockquoteBottomShapeContainer = blockquote.getElementsByClassName('blockquote__shape--bottom')[0];
    var blockquoteBottomShapeExists = blockquote.querySelectorAll('.blockquote__shape--bottom svg')[0];

    if (screenSize === 'xlarge' && blockquoteShapeFlag !== 'xlarge') {
      blockquoteWidth = 3000;

      blockquoteShapeFlag = 'xlarge';
    } else if (screenSize === 'large' && blockquoteShapeFlag !== 'large') {
      blockquoteWidth = 2000;

      blockquoteShapeFlag = 'large';
    } else if (screenSize === 'medium' && blockquoteShapeFlag !== 'medium') {
      blockquoteWidth = 1500;

      blockquoteShapeFlag = 'medium';
    } else if ((screenSize === 'xs' || screenSize === 'small') && blockquoteShapeFlag !== 'xs' || (screenSize === 'xs' || screenSize === 'small') && !nextShapeExists) {
      blockquoteWidth = 800;

      blockquoteShapeFlag = 'xs';
    }

    if (blockquoteTopShapeExists) blockquoteTopShapeExists.parentNode.removeChild(blockquoteTopShapeExists);
    if (blockquoteBottomShapeExists) blockquoteBottomShapeExists.parentNode.removeChild(blockquoteBottomShapeExists);

    var blockquoteShapeTop = new Two({
      type: Two.Types['svg'],
      width: blockquoteWidth,
      height: 200
    }).appendTo(blockquoteTopShapeContainer);

    var blockquoteShapeBottom = new Two({
      type: Two.Types['svg'],
      width: blockquoteWidth,
      height: 200
    }).appendTo(blockquoteBottomShapeContainer);

    physicsAnimation(blockquoteShapeTop, '#fff', blockquoteShapeTop.width, blockquoteShapeTop.height, 18, speed = 0.01);
    physicsAnimation(blockquoteShapeBottom, '#fff', blockquoteShapeBottom.width, blockquoteShapeBottom.height, 18, speed = 0.01);
  }
}

// Trigger generateShapes()
(function () {
  generateShapes();
})();

window.addEventListener('resize', function () {
  generateShapes();
});