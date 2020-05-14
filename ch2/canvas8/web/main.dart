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

  //draw black square
  context.fillStyle = 'black';
  context.fillRect(20, 20, 25, 25);

  //now draw a red square
  context.setTransform(1, 0, 0, 1, 0, 0);
  var angleInRadians = 45 * pi / 180;
  context.rotate(angleInRadians);
  context.fillStyle = 'red';
  context.fillRect(100, 100, 50, 50);
}
