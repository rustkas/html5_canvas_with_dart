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
  context.strokeRect(0,0,500,500);
  
  context.fillStyle = 'red'; //need list of available colors
  context.fillRect(100, 100, 50, 50);

  context.setTransform(1, 0, 0, 1, 0, 0);
  var angleInRadians = 45 * pi / 180;
  context.rotate(angleInRadians);
  context.fillStyle = 'red'; //need list of available colors
  context.fillRect(100, 100, 50, 50);
}
