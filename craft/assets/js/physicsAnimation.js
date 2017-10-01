function physicsAnimation(shape, shapeColor, shapeRadiusX, shapeRadiusY, shapePoints) {
  shape.renderer.domElement.style.overflow = "visible";

  var mass = 100;
  var radiusX = shapeRadiusX;
  var radiusY = shapeRadiusY;
  var strength = 0.003;
  var drag = 0.01;
  // var drag = 0.0;

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

    var variance = Math.random() * (0.95 - 0.9) + 0.9;
    var bx = variance * ax;
    var by = variance * ay;

    var origin = physics.makeParticle(mass, ax, ay)
    var particle = physics.makeParticle(Math.random() * mass * 0.66 + mass * 0.33, bx, by);
    var spring = physics.makeSpring(particle, origin, strength, drag, 0);

    origin.makeFixed();

    particle.shape = shape.makeCircle(particle.position.x, particle.position.y, 1);
    particle.shape.noStroke().fill = shapeColor;
    particle.position = particle.shape.translation;

    foreground.add(particle.shape)
    points.push(particle.position);

  }

  var outer = new Two.Path(points, true, true);
  var color = shapeColor;
  outer.fill = color;
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
