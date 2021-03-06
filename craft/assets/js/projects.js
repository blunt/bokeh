const filterButton = document.getElementsByClassName('filter-button');
const workItems = document.getElementsByClassName('work-item');

Array.from(filterButton).forEach((element) => {
  element.addEventListener('click', filter);
});

function filter() {
  const activeFilter = document.querySelectorAll('.filter-button:not(.hover-underline)')[0];
  const activeTag = this.dataset.tag;
  for (var i = 0; i < workItems.length; i++) {
    workItems[i].classList.remove('disabled');
  }

  activeFilter.classList.add('hover-underline');
  this.classList.remove('hover-underline');


  const activeWorkItems = document.querySelectorAll(`.work-item:not(.${activeTag})`);
  for (var i = 0; i < activeWorkItems.length; i++) {
    activeWorkItems[i].classList.add('disabled');
  }
}

// Shapes
function generateShapes() {
  const shapeContainer = document.getElementsByClassName('work__shape')[0];

  var shape = new Two({
    type: Two.Types['svg'],
    width: 1200
  }).appendTo(shapeContainer);

  const elem = {
    shape: shape,
    shapeColor: '#F84449',
    shapeRadiusX: shape.width / 2.5,
    shapeRadiusY: shape.height / 2.7,
    shapePoints: 6,
    gradient: true
  };

  physicsAnimation(elem);
}

// Trigger generateShapes()
(function() {
  generateShapes();
})();
