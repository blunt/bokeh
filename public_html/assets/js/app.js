// Navigation
const navButtonTrigger = document.getElementsByClassName('nav-button')[0],
      nav = document.getElementById('nav'),
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
s.path("M 2.17131 412.206C -16.5042 554.32 85.1171 713.421 313.783 800.442C 529.68 882.603 670.989 856 865.925 814.859C 1051.35 775.726 1251.06 842.371 1440.73 724.236C 1686.97 570.868 1881.78 188.738 1409.83 46.6268C 1194.72 -18.1439 1057.53 77.5198 835.021 69.2814C 612.516 61.043 439.455 -66.6517 229.313 46.6268C 95.6331 118.688 24.3924 243.112 2.17131 412.206Z");
