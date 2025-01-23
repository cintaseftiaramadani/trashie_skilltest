import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashie_skilltest/detail_ecotiers.dart';
import 'package:trashie_skilltest/gardener_account.dart';

class EcoTiers extends StatefulWidget {
  const EcoTiers({Key? key}) : super(key: key);

  @override
  State<EcoTiers> createState() => _EcoTiersState();
}

class _EcoTiersState extends State<EcoTiers> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> tiersItem = [
      {
        'image': 'assets/images/sprout.png',
        'title': 'SPROUT',
        'sum':
            '''Tingkatan Sprout (Tunas) adalah langkah pertama dalam perjalanan menuju keberlanjutan lingkungan. Sebagai anggota baru dalam komunitas, kamu mulai mengenal cara mengurangi sampah dan meminimalkan dampak lingkungan dari kegiatan sehari-hari. Di tahap ini, kamu mungkin baru saja mulai memilah sampah atau menggunakan produk ramah lingkungan dalam rutinitas harian. Meskipun langkah ini kecil, namun sangat berarti karena ini adalah dasar bagi perubahan yang lebih besar di masa depan.
            
            Di tingkat Sprout, kamu belajar untuk menghargai pentingnya pengelolaan sampah dan mulai berusaha menjadi lebih sadar akan keberlanjutan. Kegiatan yang mendukung tingkatan ini meliputi pengurangan penggunaan plastik sekali pakai, membawa botol minum sendiri, atau membawa tas belanjaan yang dapat digunakan kembali. Ke depan, kamu akan terus berkembang menuju tahap berikutnya dengan membawa perubahan positif lebih besar di sekitar lingkunganmu.''',
      },
      {
        'image': 'assets/images/seedling.png',
        'title': 'SEEDLING',
        'sum':
            '''Pada tingkatan Seedling (Bibit), kamu sudah menunjukkan komitmen lebih dalam terhadap keberlanjutan dengan mengambil tindakan aktif. Kamu mulai lebih sering berpartisipasi dalam kegiatan yang mendukung pengelolaan sampah dan menjaga alam. Di tingkat ini, kamu tidak hanya sekadar mengurangi sampah, tetapi juga berusaha mendaur ulang dan menggunakan produk yang bisa diperbaharui. Aktivitas seperti memilah sampah organik dan non-organik, serta memilih produk dengan kemasan ramah lingkungan, menjadi bagian dari rutinitasmu.
                
              Dengan semangat seperti bibit yang tumbuh, kamu mulai merasakan dampak positif dari keputusan-keputusan yang kamu buat. Kamu semakin sadar akan bagaimana pilihan konsumen berperan besar dalam mengurangi jejak karbon. Penggunaan kendaraan ramah lingkungan, seperti sepeda atau transportasi publik, menjadi kebiasaan yang membantumu menjaga kualitas udara dan mengurangi polusi. Teruslah tumbuh dan beri contoh bagi orang-orang di sekitarmu untuk turut serta dalam aksi yang berdampak besar.''',
      },
      {
        'image': 'assets/images/bloom.png',
        'title': 'BLOOM',
        'sum':
            '''Di tingkat Bloom (Mekar), kamu sudah menunjukkan dedikasi luar biasa terhadap pelestarian lingkungan. Tingkatan ini menunjukkan kamu telah mencapai tingkat keberlanjutan yang lebih tinggi dengan tidak hanya mengurangi sampah dan daur ulang, tetapi juga mengadopsi gaya hidup yang lebih ramah lingkungan dalam setiap aspek kehidupan. Pada tahap ini, kamu sudah mengenal konsep ekonomi sirkular dan mulai menggunakan kembali barang-barang yang mungkin terbuang begitu saja.
              
              Kamu mungkin terlibat dalam kegiatan komunitas untuk meningkatkan kesadaran tentang pentingnya keberlanjutan, mengorganisir acara daur ulang, atau bekerja sama dengan kelompok yang memiliki misi serupa. Di tahap ini, kamu sudah bisa melihat perubahan nyata, baik dalam kehidupan pribadimu maupun dalam dampaknya terhadap lingkungan yang lebih luas. Bloom adalah bukti nyata bahwa kamu tidak hanya sekadar berbicara, tetapi juga bertindak untuk mewujudkan dunia yang lebih hijau dan lebih bersih. Teruslah berkembang dan berbagi ilmu dengan orang lain agar mereka juga bisa merasakan manfaat dari perubahan positif yang kamu lakukan.''',
      },
      {
        'image': 'assets/images/tree.png',
        'title': 'TREE',
        'sum':
            '''Pada tingkatan Tree (Pohon), kamu telah menjadi simbol nyata dari keberlanjutan lingkungan. Sebagai individu yang sangat berkomitmen terhadap upaya pelestarian alam, kamu tidak hanya mempengaruhi lingkungan pribadi, tetapi juga berperan aktif dalam perubahan di masyarakat sekitar. Kamu memiliki pengetahuan mendalam tentang cara-cara menjaga bumi, dan seringkali menjadi sumber inspirasi bagi orang lain yang ingin belajar dan mengikuti jejakmu.
                  
              Sebagai bagian dari tingkatan Tree, kamu mungkin terlibat dalam kebijakan publik mengenai pengelolaan sampah atau berpartisipasi dalam proyek-proyek besar yang berfokus pada keberlanjutan, seperti penanaman pohon atau pemeliharaan ruang hijau. Kamu tahu bahwa perubahan besar dimulai dari aksi kecil yang dilakukan secara kolektif. Tingkatan ini menandakan bahwa kamu telah mengakar kuat dalam pergerakan keberlanjutan dan bisa menjadi kekuatan pendorong bagi generasi berikutnya.''',
      },
      {
        'image': 'assets/images/garden.png',
        'title': 'GARDEN',
        'sum':
            '''Tingkatan Garden (Kebun) melambangkan keselarasan antara manusia dan alam. Pada tahap ini, kamu tidak hanya menerapkan keberlanjutan di tingkat individu, tetapi juga menginspirasi dan mendorong orang lain untuk bergabung dalam perjuangan lingkungan. Sebagai bagian dari Garden, kamu sudah terlibat dalam aksi-aksi komunitas yang lebih besar, seperti pembangunan taman kota, penghijauan daerah, atau mengorganisir kampanye besar untuk mengurangi limbah plastik di masyarakat.
                  
              Sebagai anggota Garden, kamu telah membangun jaringan yang kuat dengan berbagai kelompok dan organisasi yang memiliki visi serupa, dan telah membantu menciptakan lingkungan yang lebih hijau, bersih, dan sehat. Tindakanmu memberi dampak langsung terhadap masyarakat dan dunia yang lebih besar. Dengan kerja sama yang erat dan semangat yang terus berkembang, Garden menciptakan dunia yang penuh dengan keindahan alam dan kelestarian yang bisa dinikmati oleh banyak orang.''',
      },
      {
        'image': 'assets/images/ecosystem.png',
        'title': 'ECOSYSTEM',
        'sum':
            '''Tingkatan Ecosystem (Ekosistem) dalah puncak dari perjalanan keberlanjutan. Kamu tidak hanya berfokus pada diri sendiri atau komunitasmu, tetapi berperan sebagai bagian integral dari perubahan global yang lebih besar. Sebagai anggota tingkat ini, kamu bekerja untuk menciptakan perubahan sistematis dalam cara kita mengelola sumber daya alam dan mendaur ulang, serta mendukung kebijakan yang berfokus pada keberlanjutan.

              Pada tingkat Ecosystem, kamu mungkin terlibat dalam kolaborasi internasional untuk menangani masalah lingkungan global, seperti perubahan iklim, polusi plastik, atau kerusakan hutan. Tingkatan ini melambangkan sinergi antara individu, komunitas, pemerintah, dan sektor swasta untuk menciptakan ekosistem yang seimbang, di mana alam dan manusia hidup berdampingan dengan harmoni. Kamu adalah agen perubahan yang tidak hanya berperan dalam melestarikan bumi, tetapi juga memelihara keberlanjutan untuk generasi mendatang.''',
      },
    ];

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
                    'ECO TIERS',
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: _buildGrid(context, tiersItem),
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

  Widget _buildGrid(BuildContext context, List<Map<String, String>> tiersItem) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: tiersItem.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailEcotiers(
                  tiersItem: tiersItem[index], // Pass the entire map
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(tiersItem[index]['image']!),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        );
      },
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
