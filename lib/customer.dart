import 'product.dart';
import 'store.dart';

class Customer {
  bool purchase(Store store, Symbol product, int amount) {
    if(store.hasEnough(product, amount)) {
      return true;
    }
    return false;
  }
}
