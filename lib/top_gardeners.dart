import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashie_skilltest/eco_tiers.dart';
import 'package:trashie_skilltest/eco_trackers.dart';

class TopGardeners extends StatefulWidget {
  const TopGardeners({Key? key}) : super(key: key);

  @override
  State<TopGardeners> createState() => _TopGardenersState();
}

class _TopGardenersState extends State<TopGardeners> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBFF6C3),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: MediaQuery.of(context).size.height * 0.1,
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
                    'TOP GARDENERS',
                    style: GoogleFonts.readexPro(
                      color: const Color(0xFF54340B),
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 45), // Placeholder to balance alignment
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
                      // User Rank Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'TOP 1',
                            style: GoogleFonts.readexPro(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/profileku.png'),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/firstwin.png'),
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Cinta Seftia Ramadhani',
                        style: GoogleFonts.readexPro(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),

                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFE3C2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 0, 5),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EcoTiers()),
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.43,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.9,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF538392),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Eco Tiers',
                                              style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                color: const Color(0xFFE0FBE2),
                                                fontSize: 18,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                            Text(
                                              'Ecosystem',
                                              style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                color: const Color(0xFFEFE3C2),
                                                fontSize: 22,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 0, 5),
                                    child: Container(
                                      width: 2,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.9,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF538392),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EcoTrackers()),
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.43,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.9,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF538392),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Eco Trackers',
                                              style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                color: const Color(0xFFE0FBE2),
                                                fontSize: 18,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                            Text(
                                              '500 Kg',
                                              style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                color: const Color(0xFFEFE3C2),
                                                fontSize: 22,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 2 containers

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.13,
                          decoration: BoxDecoration(
                            color: Color(0xFFEFE3C2),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 5, 0, 5),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/profileku.png'),
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 10, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Cinta Seftia Ramadani',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                2), // Menambahkan jarak antar teks
                                        Text(
                                          'First Position',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.13,
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/firstwin.png'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Leaderboard List
                      SizedBox(height: 10),
                      ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          _buildLeaderboard(
                            context,
                            name: 'Ahmadi Yoga Pratama',
                            title: 'Ecosystem | 220 Kg',
                            imagePath: 'assets/images/profile8.png',
                            badgePath: 'assets/images/secondwin.png',
                          ),
                          _buildDivider(),
                          _buildLeaderboard(
                            context,
                            name: 'Kia Kiu Kio',
                            title: 'Ecosystem | 210 Kg',
                            imagePath: 'assets/images/profile7.png',
                            badgePath: 'assets/images/thirdwin.png',
                          ),
                          _buildDivider(),
                          _buildLeaderboard(
                            context,
                            name: 'Hafid Harfin',
                            title: 'Ecosystem | 200 Kg',
                            imagePath: 'assets/images/profile5.png',
                            badgePath: 'assets/images/empat.png',
                          ),
                          _buildDivider(),
                          _buildLeaderboard(
                            context,
                            name: 'Karina',
                            title: 'Garden | 150 Kg',
                            imagePath: 'assets/images/profile6.png',
                            badgePath: 'assets/images/lima.png',
                          ),
                          _buildDivider(),
                          _buildLeaderboard(
                            context,
                            name: 'Slamet Riadi',
                            title: 'Bloom | 90 Kg',
                            imagePath: 'assets/images/profile4.png',
                            badgePath: 'assets/images/enam.png',
                          ),
                          _buildDivider(),
                          _buildLeaderboard(
                            context,
                            name: 'Bobby Kartanegara',
                            title: 'Bloom | 75 Kg',
                            imagePath: 'assets/images/profile3.png',
                            badgePath: 'assets/images/tujuh.png',
                          ),
                          _buildDivider(),
                          _buildLeaderboard(
                            context,
                            name: 'Fairuz Salim',
                            title: 'Tree | 58 Kg',
                            imagePath: 'assets/images/profile2.png',
                            badgePath: 'assets/images/lapan.png',
                          ),
                          _buildDivider(),
                          _buildLeaderboard(
                            context,
                            name: 'Sakinah Diva',
                            title: 'Tree | 50 Kg',
                            imagePath: 'assets/images/profile1.png',
                            badgePath: 'assets/images/sembilan.png',
                          ),
                        ],
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

  Widget _buildLeaderboard(
    BuildContext context, {
    required String name,
    required String title,
    required String imagePath,
    required String badgePath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(badgePath, width: 40),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: Colors.white,
      height: 20,
    );
  }
}
