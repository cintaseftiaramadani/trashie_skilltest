import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashie_skilltest/gardener_account.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:trashie_skilltest/trashie_class.dart';

class EcoTrackers extends StatefulWidget {
  const EcoTrackers({Key? key}) : super(key: key);

  @override
  State<EcoTrackers> createState() => _EcoTrackersState();
}

class _EcoTrackersState extends State<EcoTrackers> {
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
                    'ECO TRAKERS',
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
                      _buildHeaderContainer(context),
                      const SizedBox(height: 15),
                      const Divider(height: 2, color: Colors.white),
                      const SizedBox(height: 15),
                      // Generated code for this Text Widget...
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                        child: Text(
                          'Percentage of Your Waste Types',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            letterSpacing: 0.0,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1,
                          ),
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.01,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFD8EFD3),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.345,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFffffff),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/BiodegradableWaste.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: CircularPercentIndicator(
                                      percent: 0.45,
                                      radius: 60,
                                      lineWidth: 12,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: Color(0xFF14181b),
                                      backgroundColor: Color(0xFFabffffff),
                                      center: Text(
                                        '45%',
                                        style: GoogleFonts.inter(
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'Biodegradable Waste',
                                      style: GoogleFonts.readexPro(
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.01,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFD8EFD3),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.345,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFffffff),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/NonBiodegradableWaste.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: CircularPercentIndicator(
                                      percent: 0.36,
                                      radius: 60,
                                      lineWidth: 12,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: Color(0xFF14181b),
                                      backgroundColor: Color(0xFFabffffff),
                                      center: Text(
                                        '36%',
                                        style: GoogleFonts.inter(
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Non-Biodegradable Waste',
                                      style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.01,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFD8EFD3),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.345,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFffffff),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/HazardousWaste.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: CircularPercentIndicator(
                                      percent: 0.1,
                                      radius: 60,
                                      lineWidth: 12,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: Color(0xFF14181b),
                                      backgroundColor: Color(0xFFabffffff),
                                      center: Text(
                                        '10%',
                                        style: GoogleFonts.inter(
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'Hazardous Waste',
                                      style: GoogleFonts.readexPro(
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.01,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFD8EFD3),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.345,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFffffff),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/EWaste.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: CircularPercentIndicator(
                                      percent: 0.09,
                                      radius: 60,
                                      lineWidth: 12,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: Color(0xFF14181b),
                                      backgroundColor: Color(0xFFabffffff),
                                      center: Text(
                                        '9%',
                                        style: GoogleFonts.inter(
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'Electronic Waste',
                                      style: GoogleFonts.readexPro(
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TrashieClass()),
                            );
                          },
                          icon: const Icon(Icons.launch, size: 20),
                          label: const Text('Learn More About This'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            elevation: 2,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 24),
                          ),
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

  Widget _buildHeaderContainer(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF4A76B0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -0.100),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GardenerAccount()),
                      );
                    },
                    child: _buildProfileCard(context),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileCard(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.165,
      decoration: BoxDecoration(
        color: const Color(0xFFB8A1A1),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Color(0xFF416D19),
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFFB8A1A1),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/profileku.png'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                  child: Text(
                    'Cinta Seftia Ramadhani',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Eco Tiers',
                        style: TextStyle(
                          color: Color(0xFF0C454D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text('|', style: TextStyle(color: Color(0xFF0C454D))),
                      SizedBox(width: 15),
                      Text(
                        'Eco Traskers',
                        style: TextStyle(
                          color: Color(0xFF0C454D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 10),
                  child: Row(
                    children: const [
                      Text('Ecosystem', style: TextStyle(color: Colors.white)),
                      SizedBox(width: 15),
                      Text('|', style: TextStyle(color: Colors.white)),
                      SizedBox(width: 15),
                      Text('500 Kg', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
