import 'dart:math';

import 'package:gof/observer/observer.dart';
import 'package:gof/observer/subject.dart';

class RandomNumberGenerator extends Subject {
  Random rand = Random();
  int _num;

  @override
  attach(Observer observer) {
    observers.add(observer);
  }

  @override
  detach(Observer observer) {
    observers.remove(observer);
  }

  int getState() {
    return _num;
  }

  execute() {
    _num = rand.nextInt(50);
    notify();
  }
}
