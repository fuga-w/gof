import 'dart:io';

import 'package:gof/builder/builder.dart';

class HTMLBuilder extends Builder {
  String _fileName;
  IOSink _file;

  @override
  makeTitle(String title) {
    _fileName = '$title.html';
    _file = File(_fileName).openWrite();

    _file.writeln(
      '<html><head><title>$title</title></head><body>',
    );
    _file.writeln(
      '<h1>$title</h1>',
    );
  }

  @override
  makeString(String str) {
    _file.writeln(
      '<p>$str</p>',
    );
  }

  @override
  makeItems(List<String> items) {
    _file.writeln(
      '<ul>',
    );
    for (var value in items) {
      _file.writeln(
        '<li>$value</li>',
      );
    }
    _file.writeln(
      '</ul>',
    );
  }

  @override
  close() {
    _file.writeln(
      '</body></html>',
    );
  }

  String getResult() {
    _file.close();
    return _fileName;
  }
}
