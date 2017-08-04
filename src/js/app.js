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
const s = Snap('#nav-bg');
s.path("M 91.3577 198C -1.44226 174 -5.97559 56 3.35774 0L 1389.36 0C 1389.36 0 1371.22 60.4228 1363.36 100C 1337.02 232.531 1439.95 383.777 1383.36 486C 1357.3 533.066 1334.36 550 1287.86 557C 1221.15 567.042 1183.99 541.472 1125.36 566C 1059.03 593.746 1058.18 671.778 995 696C 926.678 722.193 868.905 668.671 797.358 684C 709.011 702.929 723.733 793 600 793C 476.267 793 347 648 367.358 528C 407.358 332 207.358 228 91.3577 198Z");

// Homepage Swiper
const swiper = new Swiper('.swiper-container', {
  keyboardControl: true,
  a11y: true,
  mousewheelControl: true,
  hashnav: true,
  speed: 1000,
  loop: true,
  // freeMode: true
});
