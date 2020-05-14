import 'dart:html';

void main() {
  final canvas = () {
    final CanvasElement canvas = Element.tag('canvas');
    canvas
      ..id = 'canvas1'
      ..width = 200
      ..height = 200
      ..setAttribute('style', 'position: absolute; top: 25px; left: 25px;');

    document.body.nodes.add(canvas);
    return canvas;
  }();
  final CanvasRenderingContext2D context = canvas.getContext('2d');
  context
    ..imageSmoothingEnabled = true
    ..fillStyle = 'white'
    ..fillRect(0, 0, canvas.width, canvas.height)
    ..strokeStyle = 'black'
    ..strokeRect(0, 0, canvas.width, canvas.height);

  final fillImg =
      ImageElement(src: 'img/fill_20x20.gif', width: 20, height: 20);

  fillImg.onLoad.listen((event) {
    context
      ..fillStyle = context.createPattern(fillImg, 'no-repeat')
      ..fillRect(0, 0, 20, 20)
      ..strokeRect(0, 0, 20, 20)
      ..fillStyle = context.createPattern(fillImg, 'repeat-x')
      ..fillRect(20, 0, 100, 100)
      ..strokeRect(20, 0, 100, 100)
      ..fillStyle = context.createPattern(fillImg, 'repeat-y')
      ..fillRect(0, 20, 100, 100)
      ..strokeRect(0, 20, 100, 100);
  });
}
