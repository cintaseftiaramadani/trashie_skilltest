import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailEcotiers extends StatelessWidget {
  final Map<String, String> tiersItem;

  const DetailEcotiers({
    Key? key,
    required this.tiersItem,
  }) : super(key: key);

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
                    'Detail Class',
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
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Color(0xFFBFF6C3),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          tiersItem['image']!,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        tiersItem['title']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        textAlign: TextAlign.justify,
                        tiersItem['sum']!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
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
}
