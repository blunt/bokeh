// Navigation
const navButton = document.getElementsByClassName('nav-button')[0],
      nav = document.getElementById('nav'),
      body = document.getElementsByTagName('body')[0];

navButton.addEventListener("click", openNav);

function openNav() {
  if (body.classList.contains('open')) {
    body.classList.remove('open');
  } else {
    body.classList.add('open');
  }
}

// Navigation SVG BG
// const s = Snap('#nav-bg');
// Snap.load('/img/shapes/navBg.svg', function (response) {
//     const navBg = response;
//     const nav = navBg.select('#navBg');
//     nav.attr({ width: '100%', height: '100%' });
//     s.append(navBg);
// });

// Homepage Swiper
const swiper = new Swiper('.swiper-container', {
  keyboardControl: true,
  a11y: true,
  mousewheelControl: true,
  hashnav: true,
  speed: 2000,
  // freeMode: true
});
