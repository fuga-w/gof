import 'package:gof/builder/builder.dart';

class TextBuilder extends Builder {
  final StringBuffer _stringBuffer = StringBuffer();

  @override
  makeTitle(String title) {
    _stringBuffer.writeln('==================================');
    _stringBuffer.writeln('["$title"]');
    _stringBuffer.writeln();
  }

  @override
  makeString(String str) {
    _stringBuffer.writeln('■$str');
    _stringBuffer.writeln();
  }

  @override
  makeItems(List<String> items) {
    for (var value in items) {
      _stringBuffer.writeln('・$value');
    }
    _stringBuffer.writeln();
  }

  @override
  close() {
    _stringBuffer.writeln('==================================');
  }

  String getResult() => _stringBuffer.toString();
}
