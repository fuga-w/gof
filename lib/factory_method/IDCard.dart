import 'package:gof/factory_method/product.dart';

class IDCard extends Product {
  String _owner;
  IDCard(String owner) {
    print('$ownerのカードを作ります。');
    _owner = owner;
  }

  @override
  void use() {
    print('$_ownerのカードを使います。');
  }

  String getOwner() {
    return _owner;
  }
}
