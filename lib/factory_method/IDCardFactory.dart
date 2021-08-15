import 'package:gof/factory_method/IDCard.dart';
import 'package:gof/factory_method/factory.dart';
import 'package:gof/factory_method/product.dart';

class IDCardFactory extends Factory {
  List<String> owners = [];

  @override
  Product createProduct(String owner) {
    return IDCard(owner);
  }

  @override
  void registerProduct(Product product) {
    owners.add((product as IDCard).getOwner());
  }

  List<String> getOwners() {
    return owners;
  }
}
