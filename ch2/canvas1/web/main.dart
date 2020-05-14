import 'dart:html';
import 'dart:math';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas
    ..id = 'canvas1'
    ..height = 500
    ..width = 500
    ..setAttribute('style', 'position: absolute; top: 50px; left: 50px;');

  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context
    ..imageSmoothingEnabled = true
    ..strokeStyle = 'black'
    ..strokeRect(0, 0, canvas.width, canvas.height)
    ..fillStyle = 'red'
    ..shadowOffsetX = 4
    ..shadowOffsetY = 4
    ..shadowColor = 'black'
    ..shadowBlur = 4
    ..fillRect(10, 10, 100, 100)
    ..shadowOffsetX = -4
    ..shadowOffsetY = -4
    ..shadowColor = 'black'
    ..shadowBlur = 4
    ..fillRect(150, 10, 100, 100)
    ..shadowOffsetX = 10
    ..shadowOffsetY = 10
    ..shadowColor = 'rgb(100,100,100)'
    ..shadowBlur = 8
    ..arc(200, 300, 100, 0, (pi / 180) * 360, false)
    ..fill();
}
