import 'dart:html';
import 'dart:math';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas
    ..id = 'canvas1'
    ..width = 300
    ..height = 250
    ..setAttribute('style', 'position: absolute; top: 25px; left: 25px;');

  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context
    ..imageSmoothingEnabled = true
    ..fillStyle = 'white'
    ..fillRect(0, 0, canvas.width, canvas.height)
    ..strokeStyle = 'black'
    ..strokeRect(0, 0, canvas.width, canvas.height);


  final x = 100;
  final y = x;
  final width = 100;
  final height = width;

  context
    //now draw a red rectangle
    ..fillStyle = 'red'
    ..strokeStyle = 'yellow'
    ..fillRect(2, 2, width, height)
    ..strokeRect(2, 2, width, height)
    ..setTransform(1, 0, 0, 1, 0, 0)
    ..translate(x + .5 * width, y + .5 * height)
    ..rotate(90 * pi / 180)
    ..scale(1.5, 1.5)
    ..fillRect(-.5 * width, -.5 * height, width, height)
    ..strokeRect(-.5 * width, -.5 * height, width, height);
}
