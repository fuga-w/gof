import 'package:gof/builder/builder.dart';

class Director {
  Builder _builder;

  Director(this._builder);

  construct() {
    _builder.makeTitle('Greeting');
    _builder.makeString('朝から昼にかけて');
    _builder.makeItems(
      [
        'おはようございます。',
        'こんにちは。',
      ],
    );
    _builder.makeString('夜に');
    _builder.makeItems(
      [
        'こんばんは。',
        'おやすみなさい。',
        'さようなら。',
      ],
    );
    _builder.close();
  }
}
