import 'package:gof/observer/observer.dart';

abstract class Subject {
  List<Observer> observers = [];

  attach(Observer observer) {}

  detach(Observer observer) {}

  notify() {
    for (var observer in observers) {
      observer.update(this);
    }
  }
}
