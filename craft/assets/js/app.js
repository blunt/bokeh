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

  const elem = {
    shape: navShape,
    shapeColor: '#fff',
    shapeRadiusX: navShape.width / 2,
    shapeRadiusY: navShape.height / 2,
    shapePounts: 5
  }

  physicsAnimation(elem);
}

// Trigger generateShapes()
(function() {
  generateNavShape();
})();
