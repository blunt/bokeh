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


// Navigation
const navButtonTrigger = document.getElementsByClassName('nav-button')[0],
      navOverlay = document.getElementsByClassName('nav-overlay')[0],
      body = document.getElementsByTagName('body')[0];

navButtonTrigger.addEventListener("click", openNav);

function openNav() {
  if (body.classList.contains('open')) {
    body.classList.remove('open');
    navOverlay.classList.remove('nav-open');
  } else {
    body.classList.add('open');
    navOverlay.classList.add('nav-open');
  }
}

//Page Transition
function fadeIn() {
  body.classList.remove('fade-out');
}
document.addEventListener("DOMContentLoaded", () => {
  fadeIn();
});

// Navigation Link Shape
function generateNavShape() {
  const navShapeContainer = document.getElementsByClassName('navShapeContainer')[0];

  var navShape = new Two({
    type: Two.Types['svg'],
    width: 58,
    height: 58
  }).appendTo(navShapeContainer);

  physicsAnimation(navShape, '#fff', navShape.width / 2, navShape.height / 2, 5);
}

// Trigger generateShapes()
(function() {
  generateNavShape();
})();
