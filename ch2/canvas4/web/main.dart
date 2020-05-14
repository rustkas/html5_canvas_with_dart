import 'dart:html';
import 'dart:math';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas
    ..id = 'canvas1'
    ..height = 200
    ..width = 200
    ..setAttribute('style', 'position: absolute; top: 25px; left: 25px;');

  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context
    ..imageSmoothingEnabled = true
    ..beginPath()
    ..strokeStyle = 'black'
    ..lineWidth = 5
    ..arc(100, 100, 20, 0, (pi / 180) * 360, false) // full circle
    ..translate(0.5, 0.5)
    ..stroke()
    ..closePath();
}
