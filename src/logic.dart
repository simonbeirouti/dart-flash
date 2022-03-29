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
  sleep(Duration(seconds: 1));
  print('How did you go? Rate yourself out of 3.');
  int? ratingInput = int.parse(stdin.readLineSync()!);
  rating += ratingInput;
  sleep(Duration(seconds: 1));
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

void rewardCeremony(int fS) {
  double average = fS / length;

  print('Your average was: ${average.toStringAsFixed(1)}');

  if (fS == length * length) {
    print('Your score is 100%!');
  } else if (fS >= fS * .9 && fS < length * length) {
    print('You placed in the top 90%');
  } else if (fS >= fS * .8 && fS < fS * .9) {
    print('You placed in the top 80%');
  } else if (fS >= fS * .7 && fS < fS * .8) {
    print('You placed in the top 70%');
  } else if (fS >= fS * .6 && fS < fS * .7) {
    print('You placed in the top 60%');
  } else if (fS >= fS * .5 && fS < fS * .6) {
    print('You placed in the top 50%');
  } else if (fS >= fS * .4 && fS < fS * .5) {
    print('You placed in the top 40%');
  } else if (fS >= fS * .3 && fS < fS * .4) {
    print('You placed in the top 30%');
  } else if (fS >= fS * .2 && fS < fS * .3) {
    print('You placed in the top 20%');
  } else if (fS >= fS * .1 && fS < fS * .2) {
    print('You placed in the top 10%');
  } else {
    print('It\'s literally like all you did was choose a difficulty.');
  }
}
