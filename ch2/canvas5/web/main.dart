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

    //draw a big box on the screen
    ..fillStyle = 'black' //need list of available colors
    ..fillRect(10, 10, 200, 200)
    ..save()
    ..beginPath()

    //clip the canvas to a 50x50 square starting at 0,0
    ..rect(0, 0, 50, 50)
    ..clip()

    //red circle
    ..beginPath()
    ..strokeStyle = 'red' //need list of available colors
    ..lineWidth = 5
    ..arc(100, 100, 100, 0, (pi / 180) * 360, false) // full circle
    ..lineCap = 'round'
    ..stroke()
    ..closePath()
    ..restore()

    //reclip to the entire canvas
    ..beginPath()
    ..rect(0, 0, 500, 500)
    ..clip()

    //draw a blue line that is not clipped
    ..beginPath()
    ..strokeStyle = 'blue' //need list of available colors
    ..lineWidth = 5
    ..arc(100, 100, 50, 0, (pi / 180) * 360, false) // full circle
    ..stroke()
    ..closePath();
}
