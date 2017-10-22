'use strict';

function getBreakpoints() {
  var windowWidth = window.innerWidth;

  var breakpoints = {
    xlarge: '1200',
    large: '992',
    medium: '768',
    small: '576',
    xs: '0'
  };

  var breakpointValues = Object.keys(breakpoints).map(function (key) {
    return breakpoints[key];
  });

  var breakpointValue = breakpointValues.find(function (element) {
    return windowWidth > element;
  });

  return Object.keys(breakpoints).find(function (key) {
    return breakpoints[key] === breakpointValue;
  });
}