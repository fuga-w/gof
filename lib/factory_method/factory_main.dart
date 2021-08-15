import 'package:gof/factory_method/IDCardFactory.dart';
import 'package:gof/factory_method/factory.dart';
import 'package:gof/factory_method/product.dart';

void main() {
  Factory facatory = IDCardFactory();
  Product card1 = facatory.create('結城浩');
  Product card2 = facatory.create('とむら');
  Product card3 = facatory.create('佐藤花子');

  card1.use();
  card2.use();
  card3.use();
}
