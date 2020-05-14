import 'dart:html';

void main() {
  final canvas = () {
    final CanvasElement canvas = Element.tag('canvas');
    canvas
      ..id = 'canvas1'
      ..width = 300
      ..height = 350
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
  fillImg.alt = 'pixel';
  fillImg.onLoad.listen((event) {
    context
      ..fillStyle = context.createPatternFromImage(fillImg, 'repeat')
      ..fillRect(20, 20, 200, 200);
  });
}
