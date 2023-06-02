import 'package:flutter/foundation.dart';

class CartItem {
  final String name;
  final String price;
  final String imageUrl;

  CartItem({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class CartProvider extends ChangeNotifier {
  List<CartItem> cartItems = [];

  void addToCart(CartItem item) {
    cartItems.add(item);
    notifyListeners();
  }

  void removeFromCart(CartItem item) {
    cartItems.remove(item);
    notifyListeners();
  }

  void clearCart() {
    cartItems.clear();
    notifyListeners();
  }
}
