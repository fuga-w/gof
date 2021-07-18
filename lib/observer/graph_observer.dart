import 'dart:io';

import 'package:gof/observer/observer.dart';
import 'package:gof/observer/random_number_generator.dart';

class GraphObserver extends Observer {
  @override
  update(RandomNumberGenerator subject) {
    var num = subject.getState();

    for (var i = 0; i < num; i++) {
      stdout.write('*');
    }
    print('');
  }
}
