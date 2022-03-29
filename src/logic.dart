import 'dart:io';
import 'dart:core';
import './QnAs.dart';

int length = questions.length;
int timeDuration = 0;
int rating = 0;

void diffSettings(String input) {
  String dLower = input.toLowerCase();
  switch (dLower) {
    case 'hard':
      timeDuration = 1;
      break;
    case 'medium':
      timeDuration = 2;
      break;
    case 'easy':
      timeDuration = 3;
      break;
    default:
      print('Setting difficulty to super easy.');
      timeDuration = 4;
  }
}

void getRating() {
  print('');
  print('How did you go? Rate yourself out of 3.');
  int? ratingInput = int.parse(stdin.readLineSync()!);
  rating += ratingInput;
  print('Your current score is ${rating}');
  print('');
}

void consolePrinter(int number) {
  print('');
  print('Question ${number + 1}');
  sleep(Duration(seconds: 2));
  print(questions[number]);
  sleep(Duration(seconds: timeDuration));
  print(answers[number]);
  sleep(Duration(seconds: 2));
  getRating();
}

void rewardCeremony(int finalScore) {
  double average = finalScore / length;

  print('Your average was: ${average.toStringAsFixed(1)}');

  if (average >= finalScore * .9) {
    print('You placed in the top 90%');
  } else if (average >= finalScore * .8 && average < finalScore * .9) {
    print('You placed in the top 80%');
  } else if (average >= finalScore * .7 && average < finalScore * .8) {
    print('You placed in the top 70%');
  } else if (average >= finalScore * .6 && average < finalScore * .7) {
    print('You placed in the top 60%');
  } else if (average >= finalScore * .5 && average < finalScore * .6) {
    print('You placed in the top 50%');
  } else if (average >= finalScore * .4 && average < finalScore * .5) {
    print('You placed in the top 40%');
  } else if (average >= finalScore * .3 && average < finalScore * .4) {
    print('You placed in the top 30%');
  } else if (average >= finalScore * .2 && average < finalScore * .3) {
    print('You placed in the top 20%');
  } else if (average >= finalScore * .1 && average < finalScore * .2) {
    print('You placed in the top 10%');
  } else {
    print('It\'s literally like all you did was choose a difficulty.');
  }
}
