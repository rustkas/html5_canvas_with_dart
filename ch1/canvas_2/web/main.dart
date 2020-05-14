import 'dart:html';
import 'dart:math';

void main() {
  var div = DivElement();
  div.setAttribute('style', 'position: absolute; top: 50px; left: 50px;');
  CanvasElement canvas = Element.tag('canvas');
  canvas.id = 'canvas1';
  canvas.height = 300;
  canvas.width = 500;
  canvas.setAttribute('style', 'position: absolute; top: 50px; left: 50px;');

  div.nodes.add(canvas);

  var form = FormElement();

  var button = ButtonInputElement();
  button.id = 'createImageData';
  button.value = 'Экспорт Canvas в файл';

  form.nodes.add(button);

  div.nodes.add(form);

  document.body.nodes.add(div);

// setup variables

  var guesses = 0;

  var today = DateTime.now();

  var letterToGuess = '';
  var higherOrLower = '';
  var lettersGuessed = [];
  var gameOver = false;

  var rng = Random();
// init game
  var letterIndex = (rng.nextDouble() * LETTERS.length).floor();
  var guessIndex = 0;
  letterToGuess = LETTERS[letterIndex];
  guesses = 0;
  lettersGuessed = [];
  gameOver = false;

  var drawScreen = () {
    CanvasRenderingContext2D context = canvas.getContext('2d');
    context.fillStyle = '#ffffaa';
    context.fillRect(0, 0, 500, 300);
    //Box
    context.strokeStyle = '#000000';
    context.strokeRect(5, 5, 490, 290);

    context.textBaseline = 'top';
    //Date
    context.fillStyle = '#000000';
    context.font = '10px _san';
    context.fillText(today.toLocal().toString(), 150, 10);
    //Message
    context.fillStyle = '#FF0000';
    context.font = '14px _sans';
    context.fillText(MESSAGE, 125, 30);
    //Guesses
    context.fillStyle = '#109910';
    context.font = '16px _sans';
    context.fillText('Количество попыток: $guesses', 215, 50);
    //Higher Or Lower
    context.fillStyle = '#000000';
    context.font = '16px _sans';
    context.fillText('Где же искомая буква: $higherOrLower', 150, 125);
    //Letters Guessed
    context.fillStyle = '#FF0000';
    context.font = '16px _sans';
    context.fillText('Ваши варианты: ${lettersGuessed.toString()}' , 10, 260);
    if (gameOver) {
      context.fillStyle = '#FF0000';
      context.font = '40px _sans';
      context.fillText('Вы вайграли! Буква - $letterToGuess', 50, 180);
    }
  };

  var eventKeyPressed = (e) {
    if (!gameOver) {
      var letterPressed = String.fromCharCode(e.keyCode);
      letterPressed = letterPressed.toLowerCase();
      guesses++;
      lettersGuessed.add(letterPressed);

      if (letterPressed == letterToGuess) {
        gameOver = true;
      } else {
        letterIndex = LETTERS.indexOf(letterToGuess);
        guessIndex = LETTERS.indexOf(letterPressed);

        if (guessIndex < 0) {
          higherOrLower = 'Буква угадана неправильно';
        } else if (guessIndex > letterIndex) {
          higherOrLower = 'позади';
        } else {
          higherOrLower = 'впереди';
        }
      }
      drawScreen();
    }
  };

  var createImageDataPressed = (e) {
    // do not worked
    window.open(canvas.toDataUrl('image/png',1.0), 'canavsImage',
        'left=0,top=0,width=${canvas.width}, height=${canvas.height}, toolbar=0,resizable=0');
  };

  //window.addEventListener('keyup', eventKeyPressed,true);
  window.onKeyUp.listen(eventKeyPressed);
  button.onClick.listen(createImageDataPressed);
  //button.addEventListener('click', createImageDataPressed, false);

  drawScreen();
}

const MESSAGE = 'Отгадайте букву латинского алфавита от a до z';
const LETTERS = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z'
];
