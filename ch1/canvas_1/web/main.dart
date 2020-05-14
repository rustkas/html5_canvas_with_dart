import 'dart:html';

void main() {
  CanvasElement canvas = Element.tag('canvas');
  canvas.id = 'canvas1';
  canvas.height = 300;
  canvas.width = 500;
  
  document.body.nodes.add(canvas);

  CanvasRenderingContext2D context = canvas.getContext('2d');

//background
  context.fillStyle = '#ffffa0';
  context.fillRect(0, 0, 500, 300);

  //text
  context.fillStyle = '#000000';
  context.font = '40px _sans';
  context.textBaseline = 'top';
  context.fillText('Привет, Dart!', 195, 80);

  //image

  var helloWorldImage = ImageElement(src: 'img/canvas1.png');
  helloWorldImage.onLoad.listen((e) {
    context.drawImage(helloWorldImage, 200, 130);
  });

  //box

  context.strokeStyle = '#000000';
  context.strokeRect(5, 5, 490, 290);
}
