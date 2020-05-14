import 'dart:html';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas
    ..id = 'canvas1'
    ..height = 500
    ..width = 500
    ..setAttribute('style', 'position: absolute; top: 25px; left: 25px;');

  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');
  context
    ..imageSmoothingEnabled = true

    //draw a big box on the screen
    ..fillStyle = 'black'
    ..fillRect(10, 10, 200, 200)

    //leave golbal composite operation as is
    //now draw a red square
    ..fillStyle = 'red' 
    ..fillRect(1, 1, 50, 50)

    //now set it to source-over
    ..globalCompositeOperation = 'source-over'
    //draw a red square next to the other one
    ..fillRect(60, 1, 50, 50)

    //now set to destination-atop
    ..globalCompositeOperation = 'destination-out'
    ..fillRect(1, 60, 50, 50)

    //now set globalAlpha
    ..globalAlpha = 0.5

    // //now set to source-atop
    ..globalCompositeOperation = 'source-atop'
    ..fillRect(60, 60, 50, 50);
}
