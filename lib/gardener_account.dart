import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashie_skilltest/edit_page.dart';
import 'package:trashie_skilltest/gardener_account.dart';

class GardenerAccount extends StatefulWidget {
  const GardenerAccount({Key? key}) : super(key: key);

  @override
  State<GardenerAccount> createState() => _GardenerAccountState();
}

class _GardenerAccountState extends State<GardenerAccount> {
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
                    'GARDENER ACC',
                    style: GoogleFonts.readexPro(
                      color: const Color(0xFF54340B),
                      fontSize: 37,
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
                      //di sinilah isi dari fitur

                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cinta Seftia Ramadhani',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    const SizedBox(width: 5),
                                    IconButton(
                                      icon: const Icon(Icons.edit_rounded,
                                          size: 20),
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EditPage()),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Divider(
                                  color: Theme.of(context).dividerColor,
                                  thickness: 2),
                              _buildListTile(
                                context,
                                title: 'Hello World',
                                subtitle: 'Hello World',
                                icon: Icons.arrow_right_rounded,
                                onTap: () {
                                  Navigator.pushNamed(context, 'TopGardners');
                                },
                              ),
                              _buildListTile(
                                context,
                                title: 'Hello World',
                                subtitle: 'Hello World',
                                icon: Icons.arrow_right_rounded,
                                onTap: () {
                                  Navigator.pushNamed(context, 'EcoTiers');
                                },
                              ),
                              _buildListTile(
                                context,
                                title: 'Hello World',
                                subtitle: 'Hello World',
                                icon: Icons.arrow_right_rounded,
                                onTap: () {
                                  Navigator.pushNamed(context, 'EcoTrackers');
                                },
                              ),
                              const Divider(color: Colors.white, thickness: 2),
                              _buildLogoutButton(context),
                            ],
                          ),
                        ),
                      ),

                      //tutup isi fitur
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

  Widget _buildListTile(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle()),
                    Text(
                      subtitle,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Icon(icon, color: Theme.of(context).iconTheme.color),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'LoginPage');
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            'Logout',
            style: TextStyle(color: Colors.white), // Fallback for button
          ),
        ),
      ),
    );
  }
}
