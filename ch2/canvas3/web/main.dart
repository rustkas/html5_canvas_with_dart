import 'dart:html';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas
    ..id = 'canvas1'
    ..height = 200
    ..width = 100
    ..setAttribute('style', 'position: absolute; top: 20px; left: 20px;');

  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context
    ..imageSmoothingEnabled = true
    ..strokeStyle = 'black'
    ..strokeRect(0, 0, canvas.width, canvas.height)

  //round end. bevel join, at top left of canvas
    ..strokeStyle = 'black' //need list of available colors
    ..lineWidth = 10
    ..lineJoin = 'bevel'
    ..lineCap = 'round'
    ..beginPath()
    ..moveTo(0, 10)
    ..lineTo(25, 10)
    ..lineTo(25, 25)
    ..stroke()
    ..closePath()

  //round end, bevel join, not at top or left of canvas
    ..beginPath()
    ..moveTo(10, 50)
    ..lineTo(35, 50)
    ..lineTo(35, 75)
    ..stroke()
    ..closePath()

  //flat end, round join, not at top or left
    ..lineJoin = 'round'
    ..lineCap = 'butt'
    ..beginPath()
    ..moveTo(10, 100)
    ..lineTo(35, 100)
    ..lineTo(35, 125)
    ..stroke()
    ..closePath();
}
