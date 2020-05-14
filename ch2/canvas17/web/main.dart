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
  gr
    ..addColorStop(0, 'rgb(255,0,0)')
    ..addColorStop(.5, 'rgb(0,255,0)')
    ..addColorStop(1, 'rgb(255,0,0)');

  
  final path = Path2D();
  path
    ..moveTo(0, 0)
    ..lineTo(50, 0)
    ..lineTo(100, 50)
    ..lineTo(50, 100)
    ..lineTo(0, 100)
    ..lineTo(0, 0)
    ..closePath();
  
  context
    ..translate(.25 * canvas.width-canvas.width/8, .25 * canvas.height-canvas.height/8)
    ..scale(2, 2)
    // Use the gradient for the fillStyle.
    ..fillStyle = gr
    ..stroke(path)
    ..fill(path);
}
