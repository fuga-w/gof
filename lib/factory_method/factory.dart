import 'package:gof/factory_method/product.dart';

abstract class Factory {
  Product create(String owner) {
    var p = createProduct(owner);
    registerProduct(p);

    return p;
  }

  Product createProduct(String owner);
  void registerProduct(Product product);
}
