import 'package:gof/observer/random_number_generator.dart';

abstract class Observer {
  update(RandomNumberGenerator subject) {}
}
