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
