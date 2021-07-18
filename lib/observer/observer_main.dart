import 'package:gof/observer/digit_observer.dart';
import 'package:gof/observer/graph_observer.dart';
import 'package:gof/observer/observer.dart';
import 'package:gof/observer/random_number_generator.dart';

main() {
  const repeatNum = 10;
  var generator = RandomNumberGenerator();
  Observer obs1 = DigitObserver();
  Observer obs2 = GraphObserver();
  generator.attach(obs1);
  generator.attach(obs2);

  for (var i = 0; i < repeatNum; i++) {
    generator.execute();
  }
}
