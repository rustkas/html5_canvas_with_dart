import 'dart:html';

void main() {
  final CanvasElement canvas = Element.tag('canvas');
  canvas
    ..id = 'canvas1'
    ..width = 300
    ..height = 350
    ..setAttribute('style', 'position: absolute; top: 25px; left: 25px;');

  document.body.nodes.add(canvas);

  final CanvasRenderingContext2D context = canvas.getContext('2d');
  context
    ..imageSmoothingEnabled = true
    ..fillStyle = 'white'
    ..fillRect(0, 0, canvas.width, canvas.height)
    ..strokeStyle = 'black'
    ..strokeRect(0, 0, canvas.width, canvas.height);

  final gr = context.createLinearGradient(0, 0, 100, 0);

  // Add the color stops.
  gr.addColorStop(0, 'rgb(255,0,0)');
  gr.addColorStop(.5, 'rgb(0,255,0)');
  gr.addColorStop(1, 'rgb(255,0,0)');

  // Use the gradient for the fillStyle.
  context
    ..fillStyle = gr
    ..fillRect(0, 0, 100, 100)
    ..strokeRect(0, 0, 100, 100)
    ..fillRect(0, 100, 50, 100)
    ..strokeRect(0, 100, 50, 100)
    ..fillRect(0, 200, 200, 100)
    ..strokeRect(0, 200, 200, 100);
}
