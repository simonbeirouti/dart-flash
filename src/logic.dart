import 'dart:io';
import 'dart:core';
import './QnAs.dart';

int length = questions.length;
int timeDuration = 0;
int pause = 1;
int rating = 0;

void diffSettings(String input) {
  String dLower = input.toLowerCase();
  switch (dLower) {
    case 'hard':
      timeDuration = 3;
      break;
    case 'medium':
      timeDuration = 4;
      break;
    case 'easy':
      timeDuration = 5;
      break;
    default:
      print('Wrong entry. Setting difficulty to super easy.');
      timeDuration = 6;
  }
}

void getRating() {
  print('');
  sleep(Duration(seconds: pause));
  print('How did you go? Rate yourself out of 3.');
  int? ratingInput = int.parse(stdin.readLineSync()!);
  rating += ratingInput;
  sleep(Duration(seconds: pause));
  print('Your current score is ${rating}');
  print('');
}

void consolePrinter(int number) {
  print('');
  print('Question ${number + 1}');
  sleep(Duration(seconds: pause));
  print(questions[number]);
  sleep(Duration(seconds: timeDuration));
  print(answers[number]);
  sleep(Duration(seconds: pause));
  getRating();
}

void rewardCeremony(int fS) {
  print('Your average mark: ${(fS / length).toStringAsFixed(1)}');
  print('');
  print('You scored ${((fS * 100) / (length * 3)).truncate()}%');
}
