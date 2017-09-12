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

// Navigation SVG BG
const s = Snap('#nav-bg');
s.path("M 3615.82 867.5C 3615.82 1191.15 3822.39 1808.41 3387.97 2008.04C 3014.36 2179.73 2667.79 2030.05 2127.96 2030.05C 1695.3 2030.05 1192.04 2373.36 734.316 2138C 356.364 1943.66 363.667 1457.44 326.313 1169.5C 277.021 789.537 -126.331 615.237 39.9587 270.056C 323.4 -318.306 1028.26 238.056 1711.96 238.056C 2367.98 238.056 3228.07 -138.796 3615.82 102.999C 3918.15 291.53 3615.82 603.761 3615.82 867.5Z");
