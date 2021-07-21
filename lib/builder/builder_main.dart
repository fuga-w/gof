import 'package:gof/builder/director.dart';
import 'package:gof/builder/html_builder.dart';
import 'package:gof/builder/text_builder.dart';

main(List<String> args) {
  if (args[0] == 'plain') {
    var textBuilder = TextBuilder();
    var director = Director(textBuilder);
    director.construct();
    var res = textBuilder.getResult();
    print(res);
  } else if (args[0] == 'html') {
    var htmlBuilde = HTMLBuilder();
    var director = Director(htmlBuilde);
    director.construct();
    var fileName = htmlBuilde.getResult();
    print('$fileNameが作成されました');
  }
}
