import 'dart:html';
import 'dart:math';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas
    ..id = 'canvas1'
    ..height = 200
    ..width = 300
    ..setAttribute('style', 'position: absolute; top: 25px; left: 25px;');

  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context
    ..imageSmoothingEnabled = true
    ..strokeStyle = 'black'
    ..strokeRect(0, 0, canvas.width, canvas.height);

  //now draw squares

  setupRectangle(context, 'red', getAngle(45), 50);

  setupRectangle(context, 'yellow', getAngle(75), 100);

  setupRectangle(context, 'green', getAngle(90), 150);

  setupRectangle(context, 'blue', getAngle(120), 200);
}

double getAngle(int angle) {
  return angle * pi / 180;
}

void setupRectangle(CanvasRenderingContext2D context, String fillColor,
    double angleInRadians, int x,
    [int y = 100, int width = 40, int height = 40]) {
  context
    ..setTransform(1, 0, 0, 1, 0, 0)
    ..translate(x + .5 * width, y + .5 * height)
    ..rotate(angleInRadians)
    ..fillStyle = fillColor
    ..fillRect(-.5 * width, -.5 * height, width, height);
}
