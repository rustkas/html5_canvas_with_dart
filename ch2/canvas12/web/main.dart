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
    ..strokeRect(0, 0, canvas.width, canvas.height)
    ..fillStyle = 'white'
    ..fillRect(0, 0, canvas.width, canvas.height);

  final x = 100;
  final y = x;
  final width = 50;
  final height = width;

  context
    ..fillStyle = 'red'
    ..fillRect(-.5 * width, -.5 * height, width, height)
    ..setTransform(1, 0, 0, 1, 0, 0)
    ..translate(x + .5 * width, y + .5 * height)
    ..scale(2, 2)
    ..rotate(45 * pi / 180)
    ..fillRect(-.5 * width, -.5 * height, width, height);
}
