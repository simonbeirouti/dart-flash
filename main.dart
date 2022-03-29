import 'dart:io';
import './src/logic.dart';

void main() {
  print('Let\'s play a game. Choose hard, medium or easy?');
  String? input = stdin.readLineSync()!;

  diffSettings(input);

  for (int i = 0; i < length; i++) {
    consolePrinter(i);
  }

  rewardCeremony(rating);
}
