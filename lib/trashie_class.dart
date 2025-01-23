import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashie_skilltest/detail_TrashieClass.dart';
import 'detail_waste.dart';

class TrashieClass extends StatefulWidget {
  const TrashieClass({Key? key}) : super(key: key);

  @override
  State<TrashieClass> createState() => _TrashieClassState();
}

class _TrashieClassState extends State<TrashieClass> {
  final List<Map<String, dynamic>> classItem = [
    {
      'image': 'assets/images/a.png',
      'title': 'Kenali Sampahmu, Selamatkan Bumi!',
      'sum':
          '''Memilah sampah mungkin terdengar sederhana, tapi dampaknya luar biasa! Sampah terbagi menjadi empat jenis: organik, anorganik, B3, dan campuran. Sampah organik adalah sisa makanan atau bahan alami yang mudah terurai, seperti kulit buah atau daun. Sedangkan sampah anorganik, seperti plastik dan logam, membutuhkan waktu ratusan tahun untuk terurai.

          Sampah B3 (Bahan Berbahaya dan Beracun) termasuk baterai, obat kadaluarsa, atau cat. Terakhir, ada sampah campuran yang merupakan gabungan dari ketiga jenis lainnya. Tahukah kamu? Di Indonesia, sebagian besar sampah rumah tangga masih dicampur tanpa dipilah, yang memperburuk masalah pengelolaan sampah.

          Bayangkan jika setiap orang memilah sampah sejak awal, TPA kita tidak akan terlalu penuh. Selain membantu lingkungan, memilah sampah juga dapat menciptakan peluang bisnis seperti daur ulang plastik atau pembuatan kompos. Cukup mulai dari rumahmu sendiri.

          Faktanya, negara seperti Jepang dan Korea Selatan sudah memiliki sistem pemilahan sampah yang ketat. Kita juga bisa mulai dengan menyediakan tempat sampah berbeda untuk organik, anorganik, dan B3 di rumah. Yuk, mulai hari ini, kenali sampahmu dan bantu selamatkan bumi!''',
    },
    {
      'image': 'assets/images/b.png',
      'title': 'Ubah Sampah Dapur Jadi Kompos Super!',
      'sum':
          '''Sampah dapur sering dianggap kotor dan tidak berguna. Tapi, tahukah kamu? Sampah organik seperti kulit buah, sisa sayur, atau ampas kopi bisa diubah jadi kompos yang berguna untuk tanamanmu. Membuat kompos di rumah juga bisa mengurangi sampah hingga 40%!

          Langkah pertama, kumpulkan sampah organik dalam satu wadah. Pastikan tidak ada minyak atau plastik yang tercampur. Selanjutnya, campur dengan tanah atau serbuk gergaji untuk mempercepat proses penguraian. Simpan di tempat yang tidak terkena sinar matahari langsung.

          Dalam waktu 2-3 bulan, sampah dapurmu akan berubah menjadi kompos siap pakai. Kompos ini bisa digunakan untuk menanam sayur, bunga, atau bahkan pohon kecil. Selain ramah lingkungan, menggunakan kompos juga menghemat pengeluaran untuk pupuk.

          Fakta menarik: beberapa kota di dunia, seperti San Francisco, sudah mewajibkan warganya untuk membuat kompos. Dengan begitu, sampah organik tidak berakhir di TPA. Kalau mereka bisa, kenapa kita tidak? Yuk, mulai dari dapurmu sendiri!''',
    },
    {
      'image': 'assets/images/c.png',
      'title': 'Plastikmu Bisa Jadi Karya Seni!',
      'sum':
          '''Plastik ada di mana-mana—botol minum, kantong belanja, hingga kemasan makanan. Sayangnya, plastik juga menjadi penyumbang utama polusi global. Namun, daur ulang bisa menjadi solusi. Bayangkan jika botol plastik bekasmu bisa diubah jadi tas keren atau hiasan rumah!

          Proses daur ulang dimulai dengan memilah plastik berdasarkan jenisnya. Plastik PET (botol minum) paling mudah didaur ulang, sedangkan plastik PVC lebih sulit dan sering berakhir di TPA. Setelah itu, plastik dicuci, dihancurkan, dan diolah menjadi bahan baru.

          Di Indonesia, banyak komunitas kreatif yang memanfaatkan plastik bekas untuk membuat kerajinan seperti dompet, lampu, hingga meja. Kamu juga bisa mencoba DIY di rumah, seperti membuat pot dari botol plastik. Seru, kan?

          Faktanya, hanya 9% dari semua plastik yang pernah diproduksi telah didaur ulang. Yuk, tingkatkan angka itu dengan mulai mendaur ulang plastikmu. Dengan kreativitas, plastik bekas bisa berubah dari limbah menjadi harta karun!''',
    },
    {
      'image': 'assets/images/d.png',
      'title': 'E-Waste: Sampah Elektronik yang Mengancam Masa Depan',
      'sum':
          '''Pernah bingung harus membuang ponsel rusak atau charger lama ke mana? Itu disebut e-waste, alias sampah elektronik. E-waste mengandung bahan kimia berbahaya seperti merkuri dan timbal yang bisa merusak lingkungan dan kesehatan.

          Di dunia digital seperti sekarang, e-waste semakin meningkat. Smartphone, laptop, dan perangkat pintar lainnya terus diperbarui, meninggalkan tumpukan barang lama yang tak terpakai. Padahal, banyak komponen di dalamnya bisa didaur ulang!

          Untuk mengurangi e-waste, kamu bisa mulai dengan menjual barang elektronik bekas ke tempat daur ulang resmi. Beberapa perusahaan teknologi bahkan menyediakan program tukar tambah untuk produk lama. Jangan buang sembarangan, ya!

          Tahukah kamu? Setiap tahun, dunia menghasilkan lebih dari 50 juta ton e-waste, dan hanya 20% yang didaur ulang. Mari jadi bagian dari solusi dengan mengelola e-waste secara bijak.''',
    },
    {
      'image': 'assets/images/e.png',
      'title': 'Hidup Tanpa Sampah? Bisa Banget!',
      'sum':
          '''Zero waste adalah gaya hidup yang bertujuan untuk mengurangi sampah sebanyak mungkin. Konsep ini bukan hanya tentang daur ulang, tapi juga mengganti kebiasaan buruk dengan solusi ramah lingkungan. Misalnya, membawa tumbler atau tas belanja sendiri.

          Generasi Z punya peran besar dalam gerakan ini. Kamu bisa mulai dengan hal kecil seperti mengganti sedotan plastik dengan stainless steel atau membawa wadah sendiri saat membeli makanan. Sedikit demi sedikit, kebiasaan ini akan menjadi gaya hidup.

          Mengadopsi gaya hidup zero waste juga bisa menghemat uang. Contohnya, membeli barang berkualitas tinggi yang tahan lama daripada barang sekali pakai. Selain itu, lingkungan juga akan lebih bersih dan sehat.

          Fakta menarik: komunitas zero waste di Bali, “Bye Bye Plastic Bags,” telah menginspirasi ribuan orang untuk mengurangi penggunaan plastik. Yuk, ikuti jejak mereka dan jadi bagian dari perubahan!'''
    },
    {
      'image': 'assets/images/f.png',
      'title': 'Bank Sampah: Tabungan untuk Masa Depan yang Lebih Hijau',
      'sum':
          '''Bank sampah bukan hanya tempat membuang sampah, tetapi juga cara cerdas untuk mengelola limbah sekaligus menghasilkan uang. Di sini, sampah seperti plastik, kertas, dan logam dipilah, ditimbang, dan dihargai seperti tabungan. Kamu bisa menukarkan “uang sampah” ini untuk kebutuhan sehari-hari.

          Manfaat bank sampah tidak hanya pada pengurangan limbah di lingkungan. Sistem ini juga mendukung ekonomi masyarakat lokal, khususnya pemulung dan pengrajin. Di beberapa kota, hasil tabungan bank sampah bahkan bisa digunakan untuk membayar tagihan listrik atau sekolah anak.

          Generasi Z dapat berkontribusi dengan mendirikan bank sampah mini di sekolah atau komunitas. Dengan begitu, kita tidak hanya belajar memilah sampah tetapi juga mengelola keuangan. Tahukah kamu? Indonesia memiliki lebih dari 10.000 bank sampah aktif. Yuk, gabung dan jadikan sampah sebagai aset, bukan masalah!'''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBFF6C3),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
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
                      const WasteTypeWidget(),
                      const Divider(color: Colors.white, thickness: 2),
                      ClassesContainer(classes: classItem),
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

  Widget _buildHeader(BuildContext context) {
    return Container(
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
            'TRASHIE CLASS',
            style: GoogleFonts.readexPro(
              color: const Color(0xFF54340B),
              fontSize: 37,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 45),
        ],
      ),
    );
  }
}

//container classes ---------------------------------------------------------------------------------------------------------

class WasteTypeWidget extends StatelessWidget {
  const WasteTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> wasteImages = [
      {
        'image': 'assets/images/BiodegradableWaste.png',
        'title': 'Biodegradable Waste',
        'sum':
            '''Sampah organik adalah jenis limbah yang berasal dari bahan alami yang mudah terurai secara biologis oleh mikroorganisme. Contoh utama sampah organik adalah sisa makanan, daun kering, kulit buah, dan limbah dapur. Karena sifatnya yang mudah terurai, sampah organik sering dimanfaatkan kembali melalui proses seperti komposting untuk menghasilkan pupuk alami.

            Jenis-jenis sampah organik meliputi sampah hijau (seperti rumput dan dedaunan), sampah makanan (sisa makanan dan bahan mentah), serta limbah kayu alami yang tidak mengandung bahan kimia. Di kehidupan sehari-hari, contohnya adalah kulit pisang, nasi sisa, dan ampas teh. Dengan pengelolaan yang baik, sampah ini dapat menjadi sumber daya yang bermanfaat.

            Fakta menarik tentang sampah organik adalah, ketika diolah melalui komposting, satu ton sampah organik dapat menghasilkan sekitar 400 kilogram kompos. Selain itu, jika tidak dikelola dengan benar, sampah organik yang membusuk di tempat pembuangan akhir dapat menghasilkan gas metana, yang berkontribusi pada perubahan iklim. Oleh karena itu, pengelolaan sampah organik sangat penting untuk mendukung keberlanjutan lingkungan.''',
      },
      {
        'image': 'assets/images/NonBiodegradableWaste.png',
        'title': 'Non-Biodegradable Waste',
        'sum':
            '''Sampah anorganik adalah limbah yang berasal dari bahan-bahan yang sulit terurai secara alami. Biasanya, jenis sampah ini terbuat dari bahan buatan manusia, seperti plastik, logam, kaca, dan kertas. Sampah anorganik sering menjadi masalah besar karena waktu penguraiannya yang sangat lama, bahkan bisa mencapai ratusan tahun.

          Jenis-jenis sampah anorganik meliputi sampah plastik (kantong plastik, botol minuman), logam (kaleng, kabel), kaca (botol kaca, pecahan cermin), dan kertas yang telah tercemar seperti kertas berminyak. Contoh sehari-hari termasuk bungkus makanan, botol minuman plastik, dan kaleng minuman. Sampah anorganik yang masih bisa digunakan kembali sering diolah menjadi kerajinan tangan atau didaur ulang untuk mengurangi limbah.

          Fakta uniknya, satu botol plastik membutuhkan waktu hingga 450 tahun untuk terurai di alam. Namun, dengan teknologi daur ulang modern, plastik dapat diubah menjadi berbagai produk baru seperti bahan konstruksi atau kain. Oleh karena itu, penting untuk memisahkan sampah anorganik agar lebih mudah didaur ulang dan mengurangi dampaknya terhadap lingkungan.''',
      },
      {
        'image': 'assets/images/HazardousWaste.png',
        'title': 'Hazardous Waste',
        'sum':
            '''Sampah B3 adalah limbah yang mengandung zat berbahaya bagi kesehatan manusia dan lingkungan. Jenis sampah ini meliputi baterai bekas, lampu neon, bahan kimia rumah tangga, dan limbah medis. Sampah B3 memerlukan penanganan khusus karena potensi bahayanya jika tidak dikelola dengan benar.

          Jenis-jenis sampah B3 termasuk limbah elektronik (e-waste) seperti ponsel bekas dan komputer, limbah kimia seperti pestisida atau cat, serta limbah medis seperti jarum suntik. Dalam kehidupan sehari-hari, contohnya adalah baterai bekas, deterjen cair, dan lem tembak. Sampah ini tidak boleh dibuang sembarangan karena dapat mencemari tanah dan air.

          Fakta menariknya, satu baterai bekas dapat mencemari hingga 600.000 liter air jika dibuang sembarangan. Di sisi lain, beberapa komponen elektronik dari limbah B3 dapat didaur ulang menjadi bahan berharga seperti logam mulia. Oleh sebab itu, penting untuk mengumpulkan sampah B3 di tempat khusus agar dapat dikelola dengan aman.''',
      },
      {
        'image': 'assets/images/EWaste.png',
        'title': 'Electronic Waste',
        'sum':
            '''Sampah elektronik, atau lebih dikenal sebagai e-waste, adalah limbah yang berasal dari perangkat elektronik yang sudah tidak terpakai atau rusak. Jenis sampah ini mencakup barang-barang seperti ponsel, laptop, televisi, charger, baterai, dan perangkat elektronik lainnya. Di era digital seperti sekarang, produksi e-waste meningkat pesat karena perkembangan teknologi yang begitu cepat. Orang cenderung mengganti perangkat mereka dengan yang lebih baru, meskipun perangkat lama masih bisa berfungsi.

            E-waste dikategorikan berdasarkan jenisnya, seperti perangkat komunikasi (ponsel, tablet), perangkat hiburan (televisi, konsol game), dan perangkat rumah tangga (lemari es, mesin cuci). Meski ukurannya bervariasi, dampak e-waste terhadap lingkungan sama seriusnya. Contohnya, baterai bekas yang mengandung logam berat seperti merkuri atau kadmium dapat mencemari tanah dan air jika tidak dikelola dengan benar. Dalam kehidupan sehari-hari, kita sering menemui barang seperti charger lama atau headphone rusak yang sering kali dibuang sembarangan.

            Fakta unik tentang e-waste adalah bahwa banyak komponen elektronik dapat didaur ulang atau digunakan kembali. Misalnya, logam berharga seperti emas, perak, dan tembaga sering ditemukan di dalam perangkat elektronik. Namun, sayangnya, hanya sekitar 20% e-waste yang benar-benar didaur ulang secara global. Dengan mengelola e-waste secara bijak, kita dapat mengurangi pencemaran lingkungan sekaligus memanfaatkan kembali sumber daya berharga. Yuk, mulai dengan cara sederhana seperti mendonasikan perangkat elektronik yang masih berfungsi atau membawa e-waste ke pusat daur ulang resmi!''',
      },
    ];

    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            border: Border.all(color: Colors.white, width: 4),
          ),
          padding: const EdgeInsets.all(15.0),
          child: const Text(
            'THE TYPES OF WASTE',
            style: TextStyle(
              fontFamily: 'Readex Pro',
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2,
          ),
          itemCount: wasteImages.length,
          itemBuilder: (context, index) {
            final item = wasteImages[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWaste(
                      wasteImage: {
                        'image': item['image']!,
                        'title': item['title']!,
                        'sum': item['sum']!,
                      },
                    ),
                  ),
                );
              },
              child: WasteCard(
                image: item['image']!,
                title: item['title']!,
                sum: item['sum']!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailWaste(
                        wasteImage: {
                          'image': item['image']!,
                          'title': item['title']!,
                          'sum': item['sum']!,
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

class WasteCard extends StatelessWidget {
  final String image;
  final String title;
  final String sum; // Added sum parameter
  final VoidCallback onTap;

  const WasteCard({
    Key? key,
    required this.image,
    required this.title,
    required this.sum, // Added sum parameter
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ClassesContainer extends StatelessWidget {
  final List<Map<String, dynamic>> classes;

  const ClassesContainer({Key? key, required this.classes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: classes.map((classItem) {
        return ClassesCard(
          image: classItem['image'],
          title: classItem['title'],
          sum: classItem['sum'],
          onReadMore: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailTrashieclass(classItem: classItem),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class ClassesCard extends StatelessWidget {
  final String image;
  final String title;
  final String sum; // Added sum parameter
  final VoidCallback onReadMore;

  const ClassesCard({
    Key? key,
    required this.image,
    required this.title,
    required this.sum, // Added sum parameter
    required this.onReadMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
                GestureDetector(
                  onTap: onReadMore,
                  child: const Text(
                    'View Details',
                    style: TextStyle(color: Colors.blue),
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
