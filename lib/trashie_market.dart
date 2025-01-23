import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TrashieMarket extends StatefulWidget {
  const TrashieMarket({Key? key}) : super(key: key);

  @override
  State<TrashieMarket> createState() => _TrashieMarketState();
}

class _TrashieMarketState extends State<TrashieMarket>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> sell = [
    {
      'image': 'assets/images/mallsampah.png',
      'title': 'MALLSAMPAH',
      'slogan': '"Ubah Jadi Kebaikan"',
      'link': 'https://www.mallsampah.com/',
    },
    {
      'image': 'assets/images/kepul.png',
      'title': 'KEPUL',
      'slogan': '"Jual Sampah Jadi Mudah"',
      'link': 'https://kepul.id/',
    },
    {
      'image': 'assets/images/cirowaste.png',
      'title': 'CIRO WASTE',
      'slogan': '"Semua Jadi Bermanfaat"',
      'link': 'https://cirowaste.com/',
    },
    {
      'image': 'assets/images/plasticpay.png',
      'title': 'PLASTICPAY',
      'slogan': '"Reduse Waste, Get Rewarded"',
      'link': 'https://plasticpay.net/',
    },
    {
      'image': 'assets/images/banksampahbantul.png',
      'title': 'BANK SAMPAH BANTUL',
      'slogan': '"Hari Esok yang Lebih Baik"',
      'link': 'https://banksampah.id/',
    },
    {
      'image': 'assets/images/kamibox.png',
      'title': 'KAMIBOX',
      'slogan': '"Cuman Semenit Ubah Dunia"',
      'link': 'https://kamibox.id/',
    },
    {
      'image': 'assets/images/rapel.png',
      'title': 'RAPEL',
      'slogan': '"Rakyat Peduli Lingkungan"',
      'link': 'https://www.rapel-id.com/',
    },
    {
      'image': 'assets/images/waste4change.png',
      'title': 'WASTE4CHANGE',
      'slogan': '"Penuh Dampak dan Berkembanglah"',
      'link': 'https://waste4change.com/',
    },
    {
      'image': 'assets/images/pojokplastik.png',
      'title': 'POJOK PLASTIK',
      'slogan': '"Mendampingi Anda Melampaui Batas Ambisi"',
      'link': 'https://pojokplastik.id/',
    },
    {
      'image': 'assets/images/recycleplastic.png',
      'title': 'RECYCLE PLACTIC',
      'slogan': '"Jual Beli Sampah Plastik"',
      'link': 'https://rpsampah.github.io/',
    },
  ];

  final List<Map<String, dynamic>> buy = [
    {
      'image': 'assets/images/plasticpay.png',
      'title': 'PLASTICPAY',
      'slogan': '"Reduse Waste, Get Rewarded"',
      'link': 'https://plasticpay.net/',
    },
    {
      'image': 'assets/images/inocycle.png',
      'title': 'INOCYCLE TECHNOLOGI GROUP',
      'slogan': '"Pelopor Recycled Polyester Fiber"',
      'link': 'https://inocycle.com/',
    },
    {
      'image': 'assets/images/nehwun.png',
      'title': 'NEHWUN RECYCLE',
      'slogan': '"Karya tangan daur ulang sampah plastik"',
      'link': 'https://www.instagram.com/newhun.recycle',
    },
    {
      'image': 'assets/images/waste4change.png',
      'title': 'WASTE4CHANGE',
      'slogan': '"Penuh Dampak dan Berkembanglah"',
      'link': 'https://waste4change.com/',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final tabBarHeight = 50.0;

    return Scaffold(
      backgroundColor: const Color(0xFFBFF6C3),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: screenHeight * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.home_rounded,
                      color: Color(0xFF4A76B0),
                      size: 45,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'TRASHIE MARKET',
                    style: GoogleFonts.readexPro(
                      color: const Color(0xFF54340B),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 45),
                ],
              ),
            ),
            // Body
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF6295A2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      // TabBar
                      Container(
                        color: const Color(0xFF6295A2),
                        height: tabBarHeight,
                        child: TabBar(
                          controller: _tabController,
                          labelColor: Colors.white,
                          unselectedLabelColor:
                              const Color.fromARGB(255, 25, 54, 69),
                          indicatorColor: Colors.white,
                          tabs: const [
                            Tab(
                              text: 'Sell Your Waste',
                              icon: Icon(Icons.sell_rounded),
                            ),
                            Tab(
                              text: 'Buy Recycled Products',
                              icon: Icon(Icons.shopping_cart_checkout_rounded),
                            ),
                          ],
                        ),
                      ),
                      // TabBarView with fixed height
                      Container(
                        height:
                            screenHeight - (screenHeight * 0.1 + tabBarHeight),
                        color: const Color(0xFF6295A2),
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            _sellcontent(sell), // Tab 1 Content
                            _buycontent(buy), // Tab 2 Content
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sellcontent(List<Map<String, dynamic>> data) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: data.map((sell) {
            return ProductCard(
              image: sell['image'],
              title: sell['title'],
              slogan: sell['slogan'],
              link: sell['link'],
              onReadMore: () async {
                final Uri url = Uri.parse(sell['link']);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Could not launch $url')),
                  );
                }
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buycontent(List<Map<String, dynamic>> data) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: data.map((buy) {
            return ProductCard(
              image: buy['image'],
              title: buy['title'],
              slogan: buy['slogan'],
              link: buy['link'],
              onReadMore: () async {
                final Uri url = Uri.parse(buy['link']); // Ambil link dari data
                if (await canLaunchUrl(url)) {
                  await launchUrl(url,
                      mode: LaunchMode.externalApplication); // Buka di browser
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Could not launch $url')),
                  );
                }
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String slogan;
  final String link;
  final VoidCallback onReadMore;

  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.slogan,
    required this.link,
    required this.onReadMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(link);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Could not launch $url')),
                          );
                        }
                      },
                      child: const Text(
                        'View Details',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Row(
                      children: [
                        Text(slogan),
                        const Icon(Icons.eco_outlined,
                            color: Color(0xFF4A76B0)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
