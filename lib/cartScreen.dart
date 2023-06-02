import 'package:flutter/material.dart';
import 'Product.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems;

  CartScreen(this.cartItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Color.fromARGB(255, 214, 199, 162),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return ListTile(
            leading: Image.network(
              product.imageUrl,
              width: 50,
              height: 50,
            ),
            title: Text(product.name),
            subtitle: Text(product.description),
          );
        },
      ),
    );
  }
}
