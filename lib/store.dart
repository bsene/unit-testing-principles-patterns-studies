import "product.dart";
import "package:mocktail/mocktail.dart";


class Store {
  final _inventory = Map<Symbol, int>();

  void addInventory(Symbol product, int amount) {
    _inventory[product] = amount;
  }

  bool hasEnough(Symbol product, int amount) {
    return _inventory[product]! >= amount;
  }
}

class MockStore extends Mock implements Store {}
