import 'dart:html';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas.id = 'canvas1';
  canvas.height = 500;
  canvas.width = 500;
  canvas.setAttribute('style', 'position: absolute; top: 50px; left: 50px;');

  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context.fillStyle = '#aaaaaa';
  context.fillRect(0, 0, 200, 200);
  context.fillStyle = '#000000';
  context.font = '20px _sans';
  context.textBaseline = 'top';
  context.fillText('Cześć, Canvas!', 0, 0);
}
