import 'dart:html';
import 'dart:math';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas.id = 'canvas1';
  canvas.height = 500;
  canvas.width = 500;
  canvas.setAttribute('style', 'position: absolute; top: 25px; left: 25px;');
  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context.imageSmoothingEnabled = true;
  context.strokeStyle = 'black';
  context.strokeRect(0, 0, canvas.width, canvas.height);

  //draw black square
  context.fillStyle = 'green';
  context.fillRect(20, 20, 25, 25);

  //now draw a red square
  context.setTransform(1, 0, 0, 1, 0, 0);
  var angleInRadians = 135 * pi / 180;
  var x = 100;
  var y = 100;
  var width = 50;
  var height = 50;
  context.translate(x + 0.5 * width, y + 0.5 * height);
  context.rotate(angleInRadians);
  context.fillStyle = 'red';
  context.fillRect(-0.5 * width, -0.5 * height, width, height);
}
