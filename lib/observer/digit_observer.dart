import 'package:gof/observer/observer.dart';
import 'package:gof/observer/random_number_generator.dart';

class DigitObserver extends Observer {
  @override
  update(RandomNumberGenerator subject) {
    print('DigitObserver:${subject.getState()}');
  }
}
