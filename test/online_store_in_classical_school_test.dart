import "package:test/test.dart";
import "../lib/customer.dart";
import "../lib/store.dart";
import "../lib/product.dart";
import "package:mocktail/mocktail.dart";

void main() {
  test("purchase succeeds when has enough amount in store", () {
    // Arrange
    final sut = Customer();
    final store = MockStore();

    // Act
    when(() => store.hasEnough(#shampoo, 5)).thenReturn(true);
    final result = sut.purchase(store, #shampoo, 5);
    // Assert
    expect(result, equals(true));
  });
  test("purchase fails when has not enough amount in store", () {
    // Arrange
    final sut = Customer();
    final store = MockStore();

    // Act
    when(() => store.hasEnough(#shampoo, 5)).thenReturn(false);
    final result = sut.purchase(store, #shampoo, 5);
    // Assert
    expect(result, equals(false));
  });
}
