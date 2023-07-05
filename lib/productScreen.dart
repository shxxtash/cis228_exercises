import 'package:flutter/material.dart';
import 'cartManager.dart';
import 'productdetailscreen.dart';
import 'Product.dart';
import 'appDrawer.dart';
import 'cartScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Product> products = [
    Product(
      'JUNE',
      '\₱90',
      'https://pbs.twimg.com/media/F0RfprgagAAnXLt?format=jpg&name=large',
      "JUNE is a checkered top with black flowy skirt midi dress",
      ['M'],
      'B&W Collection',
    ),
    Product(
      'NIGHT',
      '\₱85',
      'https://pbs.twimg.com/media/F0RftTraAAAYjWn?format=jpg&name=medium',
      'NIGHT is a spaghetti midi dress in color white with black gorgeous detailing which is perfect for night party.',
      ['M', 'L'],
      'B&W Collection',
    ),
    Product(
      'MOON',
      '\₱100',
      'https://pbs.twimg.com/media/F0RftSEaAAEB1jl?format=jpg&name=large',
      'MOON is full white midi dress with little bow in the middle and shoulders which made it look cute.',
      ['S', 'M'],
      'B&W Collection',
    ),
    Product(
      'KOOM',
      '\₱120',
      'https://pbs.twimg.com/media/F0RftPKaIAASKoA?format=jpg&name=medium',
      'KOOM is long-sleeved black dress with glitter detailing thoroughout the dress.',
      ['M', 'L'],
      'B&W Collection',
    ),
    Product(
      'PIECE',
      '\₱100',
      'https://pbs.twimg.com/media/F0RfyDgaEAUbdP5?format=jpg&name=large',
      'PIECE is a 3/4 sleeved midi dress with floral designs with laced neckline and sleeves',
      ['M', 'L'],
      'Spring Collection',
    ),
    Product(
      'BYUN',
      '\₱85',
      'https://pbs.twimg.com/media/F0Rfpn7aAAADpH1?format=jpg&name=medium',
      'BYUN is a midi dress with colorful flowers over it.',
      ['S', 'M'],
      'Spring Collection',
    ),
    Product(
      'SUNDAY',
      '\₱100',
      'https://pbs.twimg.com/media/F0RfyWOaUAM1cHm?format=jpg&name=medium',
      'SUNDAY is a cute dress in white with orangey-green floral detailing.',
      ['S'],
      'Spring Collection',
    ),
    Product(
      'HAE',
      '\₱85',
      'https://pbs.twimg.com/media/F0RfpqqagAAGdDr?format=jpg&name=medium',
      'HAE is stripe black and white sleeveless dress.',
      ['M', 'L'],
      'Stripes Collection',
    ),
    Product(
      'LOVE',
      '\₱90',
      'https://pbs.twimg.com/media/F0RftQ_akAEiePr?format=jpg&name=medium',
      'LOVE is a stripe dress with big heart on the middle in pink.',
      ['L', 'XL'],
      'Stripes Collection',
    ),
    Product(
      'GOSSIP',
      '\₱85',
      'https://pbs.twimg.com/media/F0Rfpo8aIAI_MoQ?format=jpg&name=large',
      'GOSSIP is midi dress design in black top with a denim kind of skirt in one',
      ['S', 'M'],
      'Funky Collection',
    ),
    Product(
      'RARE',
      '\₱85',
      'https://pbs.twimg.com/media/F0RfyWNakAASxOO?format=jpg&name=large',
      'RARE is a dress that have a futuristic kind of blue.',
      ['S', 'M'],
      'Funky Collection',
    ),
  ];

  List<Product> cartItems = [];
  List<Product> filteredProducts = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredProducts = products;
  }

  void addToCart(Product product) {
    setState(() {
      cartItems.add(product);
    });
  }

  void removeFromCart(Product product) {
    setState(() {
      cartItems.remove(product);
    });
  }

  bool isInCart(Product product) {
    return cartItems.contains(product);
  }

  void searchProducts(String searchText) {
    setState(() {
      filteredProducts = products
          .where((product) =>
              product.name.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Color.fromARGB(255, 214, 199, 162),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) => searchProducts(value),
                    decoration: InputDecoration(
                      hintText: 'Search for products...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Show search dialog or perform search operation
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: filteredProducts.map((product) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailsScreen(
                              product: product,
                              cartManager: CartManager(),
                            ),
                          ),
                        );
                      },
                      child: _buildProductItem(product),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(cartItems),
            ),
          );
        },
        label: Text('Cart (${cartItems.length})'),
        icon: Icon(Icons.shopping_cart),
        backgroundColor: Color.fromARGB(255, 214, 199, 162),
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    final isInCart = this.isInCart(product);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Image.network(
          product.imageUrl,
          width: 50,
          height: 50,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return CircularProgressIndicator();
          },
          errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
        ),
        title: Text(
          product.name,
          style: GoogleFonts.frankRuhlLibre(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          product.description,
          style: GoogleFonts.cormorantGaramond(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: IconButton(
          icon: isInCart
              ? Icon(Icons.shopping_cart)
              : Icon(Icons.add_shopping_cart),
          onPressed: () {
            if (isInCart) {
              removeFromCart(product);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Removed from Cart')),
              );
            } else {
              addToCart(product);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Added to Cart')),
              );
            }
          },
        ),
      ),
    );
  }
}
