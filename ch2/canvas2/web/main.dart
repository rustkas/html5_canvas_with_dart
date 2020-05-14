import 'dart:html';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas.id = 'canvas1';
  canvas.height = 200;
  canvas.width = 200;
  canvas.setAttribute('style', 'position: absolute; top: 50px; left: 50px;');

  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context.imageSmoothingEnabled = true;
  context.strokeStyle = 'black';
  context.strokeRect(0, 0, canvas.width, canvas.height);

  context.strokeStyle = 'black'; //need list of available colors
  context.lineWidth = 10;
  context.lineCap = 'square';
  context.beginPath();
  context.moveTo(20, 10);
  context.lineTo(100, 10);
  context.stroke();
  context.closePath();
}
