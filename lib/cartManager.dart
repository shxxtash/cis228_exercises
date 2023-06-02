import 'Product.dart';
import 'homescreen.dart';

class CartManager {
  List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addToCart(Product product) {
    _cartItems.add(product);
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
  }

  bool isInCart(Product product) {
    return _cartItems.contains(product);
  }

  int get cartItemCount {
    return _cartItems.length;
  }

  void clearCart() {
    _cartItems.clear();
  }
}
