import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trashie_skilltest/eco_tiers.dart';
import 'package:trashie_skilltest/eco_trackers.dart';
import 'package:trashie_skilltest/gardener_account.dart';
import 'package:trashie_skilltest/top_gardeners.dart';
import 'package:trashie_skilltest/trashie_class.dart';
import 'package:trashie_skilltest/trashie_event.dart';
import 'package:trashie_skilltest/trashie_market.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageViewController = PageController(initialPage: 0);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xFFD8EFD3),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello,',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF123524),
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const GardenerAccount()),
                              );
                            },
                            child: CircleAvatar(
                              backgroundColor: Color(0xFF123524),
                              radius: 22,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: const AssetImage(
                                    'assets/images/profileku.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Cinta Seftia Ramadhani !',
                    style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF123524),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 115,
                    child: Container(
                      width: double.infinity,
                      height: 130,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: PageView(
                              controller: _pageViewController,
                              scrollDirection: Axis.horizontal,
                              children: [
                                _buildPageItem(
                                  icon: Icons.emoji_events_rounded,
                                  iconColor: const Color(0xFFB9A0E6),
                                  title: 'Top Gardeners',
                                  subtitle: '1st Winner',
                                  onTap: () => Navigator.pushNamed(
                                      context, 'TopGardners'),
                                ),
                                _buildPageItem(
                                  icon: Icons.bar_chart_outlined,
                                  iconColor: const Color(0xFFD3B90A),
                                  title: 'Eco Tiers',
                                  subtitle: 'Ecosystem',
                                  onTap: () =>
                                      Navigator.pushNamed(context, 'EcoTiers'),
                                ),
                                _buildPageItem(
                                  icon: Icons.track_changes,
                                  iconColor: const Color(0xFF85A947),
                                  title: 'Eco Trackers',
                                  subtitle: '500 Kg',
                                  onTap: () => Navigator.pushNamed(
                                      context, 'EcoTrackers'),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: SmoothPageIndicator(
                                controller: _pageViewController,
                                count: 3,
                                axisDirection: Axis.horizontal,
                                onDotClicked: (index) {
                                  _pageViewController.animateToPage(
                                    index,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                effect: const ExpandingDotsEffect(
                                  expansionFactor: 2,
                                  spacing: 8,
                                  radius: 16,
                                  dotWidth: 8,
                                  dotHeight: 4,
                                  dotColor: Colors.grey,
                                  activeDotColor: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              _buildMenuItem(
                                context,
                                icon: Icons.emoji_events_rounded,
                                color: Color(0xFFB9A0E6),
                                label: 'Top Gardeners',
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TopGardeners()),
                                  );
                                },
                              ),
                              SizedBox(width: 16),
                              _buildMenuItem(
                                context,
                                icon: Icons.bar_chart_outlined,
                                color: Color(0xFFD3B90A),
                                label: 'Eco Tiers',
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const EcoTiers()),
                                  );
                                },
                              ),
                              SizedBox(width: 16),
                              _buildMenuItem(
                                context,
                                icon: Icons.track_changes,
                                color: Color(0xFF85A947),
                                label: 'Eco Trackers',
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EcoTrackers()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _buildMenuItem(
                              context,
                              icon: Icons.shopping_cart,
                              color: Color(0xFF2A9E35),
                              label: 'Trashie Market',
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TrashieMarket()),
                                );
                              },
                            ),
                            SizedBox(width: 16),
                            _buildMenuItem(
                              context,
                              icon: Icons.event_outlined,
                              color: Color(0xFF0FA3A2),
                              label: 'Trashie Event',
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TrashieEvent()),
                                );
                              },
                            ),
                            SizedBox(width: 16),
                            _buildMenuItem(
                              context,
                              icon: Icons.class_outlined,
                              color: Color(0xFFFFC95F),
                              label: 'Trashie Class',
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TrashieClass()),
                                );
                              },
                            ),
                          ],
                        ),
                        _buildImageCard(
                          context,
                          'Eco Tiers: Yuk Kenalan dengan Tingkatan Levelmu !',
                          'assets/images/ecotierskenalan.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EcoTiers()),
                            );
                          },
                        ),
                        _buildImageCard(
                          context,
                          'Trashie Market: KEPUL Hadir untuk mendaur ulang limbah domestik.',
                          'assets/images/kepul.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrashieMarket()),
                            );
                          },
                        ),
                        _buildImageCard(
                          context,
                          'Trashie Event: Konferensi Internasional di Spanyol',
                          'assets/images/src.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrashieEvent()),
                            );
                          },
                        ),
                        _buildImageCard(
                          context,
                          'Trashie Class: Sampah Elektronik yang Mengancam Masa Depan',
                          'assets/images/d.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrashieClass()),
                            );
                          },
                        )
                      ]
                          .expand((element) => [element, SizedBox(height: 10)])
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData
        icon, // Pastikan menggunakan 'required' untuk parameter yang wajib
    required Color color,
    required String label,
    required VoidCallback onTap, // Pastikan VoidCallback didefinisikan
  }) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFFEFE3C2), width: 1),
                ),
                child: Icon(icon, color: color, size: 48),
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Readex Pro',
                letterSpacing: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCard(BuildContext context, String text, String imagePath,
      {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            color: Color(0xFFEFE3C2),
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Color(0xFF6B3403),
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagePath),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 4, 0, 4),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0xFFEFE3C2),
            boxShadow: const [
              BoxShadow(
                blurRadius: 5,
                color: Color(0x32000000),
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: 48,
                ),
                const SizedBox(width: 16),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (subtitle.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
