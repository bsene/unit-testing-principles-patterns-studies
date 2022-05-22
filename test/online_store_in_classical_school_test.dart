import "package:test/test.dart";
import "../lib/customer.dart";
import "../lib/store.dart";
import "../lib/product.dart";

void main() {
  test("purchase succeeds when has enough amount in store", () {
    // Arrange
    final sut = Customer();
    final store = Store();
    store.addInventory(#shampoo, 10);

    // Act
    // Assert
    expect(sut.purchase(store, #shampoo, 5), equals(true));
  });
  test("purchase fails when has not enough amount in store", () {
    // Arrange
    final sut = Customer();
    final store = Store();
    store.addInventory(#shampoo, 10);

    // Act
    // Assert
    expect(sut.purchase(store, #shampoo, 20), equals(false));
  });
}
