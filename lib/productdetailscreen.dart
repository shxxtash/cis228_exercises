import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Product.dart';
import 'cartManager.dart';
import 'appDrawer.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  final CartManager cartManager;

  ProductDetailsScreen({required this.product, required this.cartManager});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: GoogleFonts.frankRuhlLibreTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
          backgroundColor: Color.fromARGB(255, 214, 199, 162),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.0,
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      product.price,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Sizes:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: product.sizes.map((size) {
                        return Container(
                          margin: EdgeInsets.only(right: 8.0),
                          padding: EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 8.0,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(size),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        cartManager.addToCart(product);
                        Navigator.pop(context, true);
                      },
                      child: Text('Add to Cart'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 214, 199, 162),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
