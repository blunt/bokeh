'use strict';

var filterButton = document.getElementsByClassName('filter-button');
var workItems = document.getElementsByClassName('work-item');

Array.from(filterButton).forEach(function (element) {
  element.addEventListener('click', filter);
});

function filter() {
  var activeFilter = document.querySelectorAll('.filter-button:not(.hover-underline)')[0];
  var activeTag = this.dataset.tag;
  for (var i = 0; i < workItems.length; i++) {
    workItems[i].classList.remove('disabled');
  }

  activeFilter.classList.add('hover-underline');
  this.classList.remove('hover-underline');

  var activeWorkItems = document.querySelectorAll('.work-item:not(.' + activeTag + ')');
  for (var i = 0; i < activeWorkItems.length; i++) {
    activeWorkItems[i].classList.add('disabled');
  }
}

// Shapes
function generateShapes() {
  var shapeContainer = document.getElementsByClassName('work__shape')[0];

  var shape = new Two({
    type: Two.Types['svg'],
    width: 1200
  }).appendTo(shapeContainer);

  physicsAnimation(shape, '#F84449', shape.width / 2.5, shape.height / 2.7, 6, null, true);
}

// Trigger generateShapes()
(function () {
  generateShapes();
})();