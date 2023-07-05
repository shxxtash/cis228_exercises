import 'package:flutter/material.dart';
import 'productdetailscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Product.dart';
import 'appDrawer.dart';
import 'cartScreen.dart';
import 'cartManager.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  final CartManager cartManager = CartManager();
  String selectedCategory = 'All';
  String searchQuery = '';

  List<Product> getFilteredProducts() {
    if (selectedCategory == 'All') {
      return products
          .where((product) =>
              product.name.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    } else {
      return products
          .where((product) =>
              product.category == selectedCategory &&
              product.name.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromARGB(255, 214, 199, 162),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cartManager.cartItems),
                ),
              );
            },
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Discover',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
                  ),
                ),
                SizedBox(width: 8.0),
                DropdownButton<String>(
                  value: selectedCategory,
                  onChanged: (newValue) {
                    setState(() {
                      selectedCategory = newValue!;
                    });
                  },
                  items: <String>[
                    'All',
                    'B&W Collection',
                    'Spring Collection',
                    'Stripes Collection',
                    'Funky Collection',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 0.75,
              ),
              itemCount: getFilteredProducts().length,
              itemBuilder: (context, index) {
                final product = getFilteredProducts()[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(
                          product: product,
                          cartManager: cartManager,
                        ),
                      ),
                    ).then((value) {
                      if (value != null && value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Added to cart'),
                          ),
                        );
                      }
                    });
                  },
                  child: Card(
                    elevation: 6,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AspectRatio(
                              aspectRatio: 1.0,
                              child: Image.network(
                                product.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: GoogleFonts.frankRuhlLibre(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: GoogleFonts.frankRuhlLibre(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: IconButton(
                            icon: Icon(
                              cartManager.isInCart(product)
                                  ? Icons.shopping_cart
                                  : Icons.add_shopping_cart,
                              color: cartManager.isInCart(product)
                                  ? Color.fromARGB(255, 214, 199, 162)
                                  : Colors.white,
                            ),
                            onPressed: () {
                              if (cartManager.isInCart(product)) {
                                cartManager.removeFromCart(product);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Removed from cart'),
                                  ),
                                );
                              } else {
                                cartManager.addToCart(product);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Added to cart'),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
