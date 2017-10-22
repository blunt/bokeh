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

var blockquoteShapeFlag = 'xs';
var blockquoteWidth = 800;

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

  physicsAnimation(heroShape, '#fff', heroShape.width, heroShape.height, 18, speed = 0.01);


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

  physicsAnimation(nextShape, '#fff', nextShape.width, nextShape.height, 18, speed = 0.01);

  const blockquotes = document.querySelectorAll('blockquote:not(.no-shape)');

  for (var i = 0; i < blockquotes.length; i += 1) {
    const blockquote = blockquotes[i];

    const blockquoteTopShapeContainer = blockquote.getElementsByClassName('blockquote__shape--top')[0];
    const blockquoteTopShapeExists = blockquote.querySelectorAll('.blockquote__shape--top svg')[0];
    const blockquoteBottomShapeContainer = blockquote.getElementsByClassName('blockquote__shape--bottom')[0];
    const blockquoteBottomShapeExists = blockquote.querySelectorAll('.blockquote__shape--bottom svg')[0];


    if (screenSize === 'xlarge' && blockquoteShapeFlag !== 'xlarge') {
      blockquoteWidth = 3000;

      blockquoteShapeFlag = 'xlarge';
    } else if (screenSize === 'large' && blockquoteShapeFlag !== 'large') {
      blockquoteWidth = 2000;

      blockquoteShapeFlag = 'large';
    } else if (screenSize === 'medium' && blockquoteShapeFlag !== 'medium') {
      blockquoteWidth = 1500;

      blockquoteShapeFlag = 'medium';
    } else if (((screenSize === 'xs' || screenSize === 'small') && blockquoteShapeFlag !== 'xs') || (screenSize === 'xs' || screenSize === 'small') && !nextShapeExists) {
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
(function() {
  generateShapes();
})();

window.addEventListener('resize', () => {
  generateShapes();
});
