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
  print('Your average mark: ${(fS / length).toStringAsFixed(1)}');
  print('');
  print('You scored ${((fS * 100) / (length * 3)).truncate()}%');
}
