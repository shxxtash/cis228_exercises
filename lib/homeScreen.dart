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
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342975837_1196715181042941_120879753685222451_n.jpg?stp=cp6_dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeE2CpG5Bv0eDauY0NXy_r-2xCa2pceMKA3EJralx4woDbBhX-T3RjjwXG-R-P4rAw45Q1vpzTIdIBKzkRP-GguF&_nc_ohc=kOWNhcYUKdMAX95j4gM&_nc_ht=scontent.fklo1-1.fna&oh=00_AfBqa3wv6YX31jbajht4oHzZqwTcCKFhrDmrDuirBOu4mQ&oe=647F40F3',
      "JUNE is a checkered top with black flowy skirt midi dress",
      ['M'],
      'B&W Collection',
    ),
    Product(
      'NIGHT',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342042650_917329569597087_5292230384585256676_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeFMadMhQMvXMW2KSkwUdyN3t7X-K3I2BrS3tf4rcjYGtKLfmBFjDIjBvdpOVIk4QXSzm56O2_hfhGvNrvqpSR8r&_nc_ohc=H_Wv6Ntr6WYAX8ubua-&_nc_ht=scontent.fklo1-1.fna&oh=00_AfA60eQpfmzoxFb1fS70uYQ73wVzT6-L4d2aDBgZgEEkWw&oe=647755DB',
      'NIGHT is a spaghetti midi dress in color white with black gorgeous detailing which is perfect for night party.',
      ['M', 'L'],
      'B&W Collection',
    ),
    Product(
      'MOON',
      '\₱100',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342976837_1592257871184000_2059355625064819870_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeGEtvbDO6R0-sIIzwnWT5kGhR8X_mgUKm6FHxf-aBQqbrSNVPsdOVYTOIb0Xa-XEyJru_c1dIhvoINGdGp2JsuA&_nc_ohc=nyIQlts9nYgAX-jrmZn&_nc_ht=scontent.fklo1-1.fna&oh=00_AfBxn1rQgPoka9057ljvs6BtRK9Cdl5arJlH4if9ZPtm9A&oe=64765B7C',
      'MOON is full white midi dress with little bow in the middle and shoulders which made it look cute.',
      ['S', 'M'],
      'B&W Collection',
    ),
    Product(
      'KOOM',
      '\₱120',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342195438_248774714286101_7261996125118263747_n.jpg?stp=cp6_dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeG8S_whxfM2tuNLZKMyZjB2GzkQizOhW_wbORCLM6Fb_GT0S77ny9cabu8H4Hz8el3PabzvVhiEUKz4RN6B3qOj&_nc_ohc=2hXabMkCS6sAX-0wf57&_nc_ht=scontent.fklo1-1.fna&oh=00_AfCHiXvJutZnm8oLH1WlYDmKo0ULeBMB-d_8w-G4lqsKbQ&oe=64772917',
      'KOOM is long-sleeved black dress with glitter detailing thoroughout the dress.',
      ['M', 'L'],
      'B&W Collection',
    ),
    Product(
      'PIECE',
      '\₱100',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342898023_845378573699875_349091013909038247_n.jpg?stp=cp6_dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeGbZoiWHl18TWC41jZQxcmxpoDINQx4YaOmgMg1DHhhowUq3XtBXDYp14QLK9pCPRsgM2_-aCv80igxKlpDTmvN&_nc_ohc=zSaRz1ElOUsAX9zsfyx&_nc_ht=scontent.fklo1-1.fna&oh=00_AfCTMadLG2IGomjiVYJXeC20hhYNSWGz_Nbj8z0qm7Pnkg&oe=64768658',
      'PIECE is a 3/4 sleeved midi dress with floral designs with laced neckline and sleeves',
      ['M', 'L'],
      'Spring Collection',
    ),
    Product(
      'BYUN',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342630958_211331514940134_5823112770782098409_n.jpg?stp=cp6_dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeH1FBATfcOkRDqNQ5sVy7P90TMxdrooxvnRMzF2uijG-R0QVgoIs3oEFJcW6BA8CekUt-ZfogY1i9_bxUOR5lBO&_nc_ohc=MDN9ApuvNpUAX8PdUdO&_nc_ht=scontent.fklo1-1.fna&oh=00_AfBC1kMpS_GFIA4mq4aJVc0BYasXkXjriwyTiQduGLL4TA&oe=64773920',
      'BYUN is a midi dress with colorful flowers over it.',
      ['S', 'M'],
      'Spring Collection',
    ),
    Product(
      'SUNDAY',
      '\₱100',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/343065215_3115449438757755_7549097890709998861_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeHsqYmDwpeTEuDm9fC0j-IHDhoAJWC1u98OGgAlYLW732lNg-rhVxvoJ1AKdRIthRr-bA5_nvYcHM9S6YU1QDN7&_nc_ohc=PGLFgcBhDdkAX-ATtK_&_nc_ht=scontent.fklo1-1.fna&oh=00_AfBj-H16Kh0nHHrGSiBUAeAC9VzXrwNsTTlwiGb2ePmVKg&oe=6477451B',
      'SUNDAY is a cute dress in white with orangey-green floral detailing.',
      ['S'],
      'Spring Collection',
    ),
    Product(
      'HAE',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342969525_3550149851931800_5388957810898168435_n.jpg?stp=cp6_dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEf-hkRE5dq1Y0oRxhcEjoZox-DXkjlRQKjH4NeSOVFAtb3QI61mUnh6FRr8oeAJW2pTR-ZO4gAJhOTIY3WEV4g&_nc_ohc=SB32z_ZYPdIAX-v-DWM&_nc_oc=AQmAmJ9kgOg4-NPtS740xYS7MoE3Xh__B9e_ljGx_j9k0fEBMBVDSK54iwUINnIf1KE&_nc_ht=scontent.fklo1-1.fna&oh=00_AfDjI0yp8ebG8TPuGYHu_pJ8-uG-bHCmXGKqeO5h9G8Nww&oe=64778F59',
      'HAE is stripe black and white sleeveless dress.',
      ['M', 'L'],
      'Stripes Collection',
    ),
    Product(
      'LOVE',
      '\₱90',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/343331125_1392739794913763_4530845305523266730_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeGupkUCvOw851MleZa0vA5DgDQjc_PKeXaANCNz88p5dgry5m8AdVBr56Lp5DzICVr0g_j4NIzbmq9ILUuyD_b6&_nc_ohc=j4LW1EcXSacAX9wlEQu&_nc_ht=scontent.fklo1-1.fna&oh=00_AfC93hemgS1sjJpnTBa2T7k4MVyJo47qHz5PKcfADGGS8g&oe=6477C91D',
      'LOVE is a stripe dress with big heart on the middle in pink.',
      ['L', 'XL'],
      'Stripes Collection',
    ),
    Product(
      'GOSSIP',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342980090_1593623421119890_1459457381440170222_n.jpg?stp=cp6_dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeHWfKG-2fp2-RKdNQmRf4tfZdPcIc1GF3dl09whzUYXd0-PclDvsprIQVSnX--zgDDnFi9UrFio83Kgu-Q-TiSV&_nc_ohc=h_532_Rb7D4AX8l3jCn&_nc_ht=scontent.fklo1-1.fna&oh=00_AfDzb-xuEaBBGlijTlanZyt2KxvwbmOMo25yI7j6bmHOAw&oe=64769B11',
      'GOSSIP is midi dress design in black top with a denim kind of skirt in one',
      ['S', 'M'],
      'Funky Collection',
    ),
    Product(
      'RARE',
      '\₱85',
      'https://scontent.fklo1-1.fna.fbcdn.net/v/t39.30808-6/342986729_6106631409404906_1788010717688541805_n.jpg?stp=cp6_dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeGmHPzlGyCajZVfJolBzoAxlcmOXUcn6YWVyY5dRyfphQ4fVQr0QTTTT7DgzFz8TW63DRu6wPwg_esJKHQNw0R4&_nc_ohc=9FVayN7qEgMAX8s3sNj&_nc_ht=scontent.fklo1-1.fna&oh=00_AfBfEikhGVQt0R2VZrjEpJCp1E5--ZsNhTFiHiP2Xg6-Ug&oe=64764C81',
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
