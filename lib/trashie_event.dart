import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:trashie_skilltest/detail_trashieevent.dart';

class TrashieEvent extends StatefulWidget {
  const TrashieEvent({Key? key}) : super(key: key);

  @override
  State<TrashieEvent> createState() => _TrashieEventState();
}

class _TrashieEventState extends State<TrashieEvent> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  final List<Map<String, dynamic>> events = [
    {
      'image': 'assets/images/antaranews.png',
      'title': 'Jakarta Bebas Sampah Tahun Baru 2025',
      'date': DateTime(2025, 1, 1),
      'sum':
          '''Mengawali tahun baru 2025, Jakarta menggelar aksi massal bertajuk "Jakarta Bebas Sampah" yang bertujuan membersihkan seluruh wilayah ibu kota dari sisa perayaan malam pergantian tahun. Kegiatan ini dimulai sejak dini hari dan melibatkan ribuan relawan, petugas kebersihan, serta berbagai komunitas peduli lingkungan. Targetnya, kota Jakarta bebas dari sampah pada pukul 05.00 WIB, memberikan awal yang bersih dan segar bagi warga.

              Aksi pembersihan ini dilakukan secara serentak di berbagai titik strategis, seperti Bundaran HI, Monas, dan kawasan Ancol, yang menjadi pusat keramaian pada malam sebelumnya. Sampah seperti botol plastik, kertas, dan sisa makanan dikumpulkan, dipilah, dan sebagian didaur ulang. Selain membersihkan lingkungan, kegiatan ini juga menjadi ajang edukasi penting bagi masyarakat mengenai pengelolaan sampah yang berkelanjutan.

              Dengan semangat kolaborasi, acara ini menjadi simbol awal tahun yang positif bagi Jakarta, menegaskan komitmen kota terhadap keberlanjutan dan kesadaran lingkungan. Harapannya, kegiatan seperti ini dapat menginspirasi daerah lain untuk mengelola sampah secara lebih bijak, terutama dalam menghadapi dampak dari perayaan massal.''',
    },
    {
      'image': 'assets/images/mbg.png',
      'title': 'Program Makan Bergizi Gratis (MBG)',
      'date': DateTime(2025, 1, 6),
      'sum':
          '''Pemerintahan Prabowo Gibran resmi meluncurkan Program Makan Bergizi Gratis (MBG), yang menjadi salah satu prioritas nasional. Program ini bertujuan meningkatkan kualitas hidup masyarakat melalui akses makanan sehat dan bergizi, terutama bagi kelompok rentan. Peluncuran program ini ditandai dengan dimulainya SPPG (Sentra Penyediaan Pangan Gratis) di 190 titik yang tersebar di 26 provinsi, melibatkan ribuan relawan dan institusi pemerintah.

                Selain memberikan manfaat nutrisi, program ini juga menaruh perhatian besar pada dampak lingkungan. Kementerian Lingkungan Hidup dan Kehutanan (KLHK) turut serta mengawasi pengelolaan sampah yang dihasilkan selama program berlangsung. Langkah-langkah seperti penggunaan bahan kemasan ramah lingkungan dan pemilahan sampah secara ketat diterapkan untuk memastikan bahwa kegiatan ini selaras dengan prinsip keberlanjutan.

                Program ini tidak hanya menjadi simbol kolaborasi lintas sektor, tetapi juga bukti nyata komitmen pemerintah terhadap peningkatan kesejahteraan rakyat. Diharapkan, MBG dapat menjadi model yang menginspirasi inisiatif serupa di seluruh Indonesia, dengan tetap menjaga keseimbangan antara kebutuhan masyarakat dan kelestarian lingkungan.''',
    },
    {
      'image': 'assets/images/subang.png',
      'title': 'Daur Ulang Sampah Plastik oleh DWP Subang',
      'date': DateTime(2025, 1, 20),
      'sum':
          '''DWP (Dharma Wanita Persatuan) Subang menggelar pelatihan kreatif yang berfokus pada pemanfaatan sampah plastik menjadi produk bernilai ekonomi. Kegiatan ini bertujuan untuk memberikan keterampilan baru kepada masyarakat, terutama ibu rumah tangga, dalam menciptakan peluang usaha dari barang-barang yang biasanya dianggap limbah.

                Peserta pelatihan diajarkan cara mengolah plastik bekas menjadi berbagai produk seperti tas, dompet, dan hiasan rumah. Dengan pendekatan praktis dan inspiratif, kegiatan ini tidak hanya mengasah kreativitas, tetapi juga memberikan solusi nyata untuk mengurangi timbunan sampah plastik di lingkungan. Selain itu, pelatihan ini menyoroti pentingnya ekonomi sirkular dalam mendukung keberlanjutan.

                Melalui program ini, DWP Subang berharap dapat memberdayakan masyarakat lokal sekaligus meningkatkan kesadaran akan pengelolaan sampah yang bertanggung jawab. Inisiatif ini diharapkan menjadi langkah awal untuk menciptakan ekosistem yang mendukung praktik ramah lingkungan sambil meningkatkan kesejahteraan ekonomi masyarakat setempat.''',
    },
    {
      'image': 'assets/images/dlh.png',
      'title': 'Lomba Fashion Show Daur Ulang Sampah',
      'date': DateTime(2025, 2, 15),
      'sum':
          '''Pada 15 Februari 2025, Kota Pangkalpinang menjadi tuan rumah kompetisi kreatif bertema daur ulang sampah. Dalam acara ini, pelajar dari tingkat SD hingga SMA menunjukkan kreativitas mereka dengan mengenakan busana yang terbuat dari bahan daur ulang. Lomba ini tidak hanya menjadi ajang pamer bakat, tetapi juga sarana edukasi bagi generasi muda mengenai pentingnya pengelolaan sampah yang berkelanjutan.

                Setiap peserta ditantang untuk menciptakan kostum unik dengan memanfaatkan limbah seperti plastik, kertas, dan kain bekas. Acara ini mendapat sambutan antusias dari masyarakat setempat, terutama para orang tua dan guru, yang turut mendukung upaya peningkatan kesadaran lingkungan sejak usia dini. Tidak hanya menampilkan parade busana, lomba ini juga menjadi ajang diskusi kreatif tentang cara-cara inovatif mengurangi sampah.

                Dengan dukungan penuh dari Dinas Lingkungan Hidup (DLH) Pangkalpinang, kegiatan ini diharapkan dapat menginspirasi masyarakat untuk lebih peduli terhadap isu sampah. Lomba fashion show ini menjadi langkah nyata untuk menunjukkan bahwa limbah dapat diubah menjadi karya seni yang bernilai tinggi sekaligus mengedukasi generasi muda tentang pentingnya menjaga kelestarian lingkungan.''',
    },
    {
      'image': 'assets/images/konser.png',
      'title':
          'Penerbitan Edaran Wajib Pengelolaan Sampah Usai Acara Besar oleh KLHK',
      'date': DateTime(2025, 2, 20),
      'sum':
          '''Kementerian Lingkungan Hidup dan Kehutanan (KLHK) resmi mengeluarkan edaran yang mewajibkan setiap penyelenggara acara besar untuk memastikan pengelolaan sampah yang efektif. Edaran ini mencakup kegiatan berskala besar seperti konser musik, pertandingan olahraga, dan perayaan keagamaan. Langkah ini bertujuan untuk mengurangi volume sampah yang dihasilkan selama dan setelah acara berlangsung.

                Dalam edaran tersebut, KLHK menggarisbawahi tanggung jawab penyelenggara untuk menyediakan fasilitas pengelolaan sampah, seperti tempat sampah terpilah dan sistem pengangkutan yang efisien. Selain itu, penyelenggara juga diimbau untuk bekerja sama dengan komunitas atau perusahaan daur ulang agar limbah yang dihasilkan dapat diolah kembali. Langkah ini sejalan dengan visi pemerintah untuk membangun budaya minim sampah di berbagai lapisan masyarakat.

                Edaran ini disambut baik oleh berbagai pihak, termasuk aktivis lingkungan dan organisasi masyarakat, yang menilai kebijakan ini sebagai langkah proaktif untuk menjaga kebersihan lingkungan. Dengan adanya regulasi ini, diharapkan acara-acara besar dapat berjalan tanpa meninggalkan dampak negatif terhadap lingkungan, sekaligus mengedukasi peserta dan panitia tentang pentingnya pengelolaan sampah yang bertanggung jawab.''',
    },
    {
      'image': 'assets/images/2025.png',
      'title': 'Kampanye Edukasi Pengurangan Sampah Plastik',
      'date': DateTime(2025, 2, 28),
      'sum':
          '''Sebuah kampanye edukasi besar-besaran mengenai pengurangan sampah plastik dilaksanakan. Acara ini melibatkan berbagai kegiatan, seperti workshop daur ulang sampah plastik dan sosialisasi penggunaan kantong belanja yang ramah lingkungan. Kampanye ini bertujuan untuk meningkatkan kesadaran masyarakat tentang dampak buruk plastik sekali pakai terhadap lingkungan dan memperkenalkan alternatif yang lebih berkelanjutan.

                Workshop daur ulang menjadi salah satu daya tarik utama, di mana peserta diajarkan cara kreatif mengolah sampah plastik menjadi barang bernilai ekonomis, seperti tas, hiasan rumah, atau peralatan sederhana. Selain itu, kampanye ini memperkenalkan kantong belanja yang dapat digunakan berkali-kali sebagai pengganti plastik sekali pakai, lengkap dengan tips untuk memulai gaya hidup minim sampah di kehidupan sehari-hari.

                Kampanye ini berhasil menarik perhatian masyarakat luas, termasuk pelajar, komunitas lingkungan, dan pelaku usaha lokal. Dengan adanya inisiatif seperti ini, diharapkan masyarakat lebih sadar akan pentingnya mengurangi penggunaan plastik sekali pakai dan bersama-sama menciptakan lingkungan yang lebih bersih dan sehat untuk generasi mendatang.''',
    },
    {
      'image': 'assets/images/bali.png',
      'title': 'Rapat Koordinasi Percepatan Pengelolaan Sampah Tahun 2025',
      'date': DateTime(2025, 3, 7),
      'sum':
          '''Wali Kota Denpasar, I Gusti Ngurah Jaya Negara, memimpin Rapat Koordinasi Percepatan Pengelolaan Sampah yang bertempat di Denpasar, Indonesia. Rapat ini dihadiri oleh kepala OPD terkait, camat, perbekel, dan lurah untuk membahas strategi intensif dalam pengelolaan sampah. Fokus utama rapat adalah pengawasan terhadap pelaksanaan Peraturan Daerah (Perda) terkait sampah dan optimalisasi kinerja swakelola guna meningkatkan efisiensi pengelolaan sampah di tingkat lokal.

                Rapat ini menyoroti pentingnya partisipasi aktif dari berbagai pihak, termasuk masyarakat, pemerintah, dan sektor swasta, untuk menciptakan lingkungan yang bersih dan sehat. Salah satu agenda utama adalah mendorong pelaksanaan program-program berbasis komunitas yang melibatkan langsung warga dalam pengelolaan sampah sehari-hari. Wali Kota juga menekankan perlunya pengawasan yang ketat terhadap pelaksanaan Perda agar kebijakan dapat berjalan sesuai harapan.

                Melalui rapat ini, diharapkan kolaborasi lintas sektor dapat mempercepat implementasi pengelolaan sampah berkelanjutan. Inisiatif ini menjadi langkah konkret Pemerintah Kota Denpasar dalam mengatasi tantangan sampah dan menjadikan Denpasar sebagai contoh kota ramah lingkungan dengan sistem pengelolaan yang terintegrasi.''',
    },
    {
      'image': 'assets/images/global.png',
      'title': 'World Recycling Day Celebration 2025',
      'date': DateTime(2025, 3, 18),
      'sum':
          '''Dunia akan merayakan World Recycling Day dengan berbagai kegiatan yang diselenggarakan di banyak negara. Perayaan ini bertujuan meningkatkan kesadaran global tentang pentingnya daur ulang dalam menciptakan masa depan yang berkelanjutan. Tahun ini, tema perayaan berfokus pada peran ekonomi sirkular, yang menunjukkan bagaimana limbah dapat diubah menjadi sumber daya baru dan membantu mengurangi ketergantungan pada bahan baku alami.

              Berbagai organisasi lokal dan internasional berpartisipasi melalui kampanye online, lokakarya edukasi, dan aksi bersih lingkungan. Diskusi panel diadakan untuk memperdalam pemahaman tentang teknologi daur ulang inovatif dan solusi kreatif dalam pengelolaan limbah. Selain itu, penggalangan dana untuk mendukung inisiatif daur ulang di tingkat komunitas menjadi salah satu agenda utama di banyak wilayah.

              World Recycling Day Celebration 2025 tidak hanya menginspirasi tindakan lokal tetapi juga mempromosikan kolaborasi global untuk memecahkan tantangan pengelolaan limbah. Melalui perayaan ini, masyarakat di seluruh dunia diingatkan bahwa setiap langkah kecil menuju daur ulang dapat memberikan dampak besar dalam melindungi planet untuk generasi mendatang.''',
    },
    {
      'image': 'assets/images/src.png',
      'title':
          'Konferensi Internasional Ilmu Bumi dan Pengelolaan Limbah Lingkungan',
      'date': DateTime(2025, 4, 21),
      'sum':
          '''Pada 25-27 Maret 2025, Kuala Lumpur, Malaysia, akan menjadi tuan rumah Konferensi Internasional tentang Pengelolaan Sampah dan Lingkungan. Acara ini bertujuan untuk mempertemukan para ahli, peneliti, dan praktisi dari berbagai negara guna berbagi pengetahuan dan pengalaman dalam mengelola limbah secara berkelanjutan. Konferensi ini menjadi platform diskusi inovatif untuk memajukan teknologi pengelolaan sampah dan mengembangkan kebijakan lingkungan yang efektif.

          Topik yang dibahas dalam konferensi ini mencakup inovasi terbaru dalam teknologi daur ulang, strategi pengurangan limbah, serta pengelolaan limbah berbasis masyarakat. Peserta juga akan mendapatkan wawasan mendalam tentang kebijakan lingkungan global dan peran ekonomi sirkular dalam mengatasi tantangan limbah. Pameran teknologi modern dan studi kasus dari berbagai negara menjadi salah satu daya tarik utama acara ini.

          Melalui konferensi ini, diharapkan tercipta kolaborasi internasional yang mempercepat adopsi teknologi ramah lingkungan dan pengelolaan limbah yang lebih baik. Acara ini menjadi langkah penting dalam mempromosikan solusi berkelanjutan dan membangun dunia yang lebih hijau untuk masa depan.''',
    },
  ];

  DateTime _normalizeDate(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBFF6C3),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            _buildHeader(),
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Kalender
                      _buildCalendar(),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      // Event Container
                      _eventscontainer(events),
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

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 70.0,
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
            'TRASHIE EVENT',
            style: GoogleFonts.readexPro(
              color: const Color(0xFF54340B),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 45),
        ],
      ),
    );
  }

  Widget _buildCalendar() {
    // Ekstrak semua tanggal event, gunakan tanggal yang dinormalisasi
    final Set<DateTime> _eventDays = events
        .map<DateTime>((event) => _normalizeDate(event['date'] as DateTime))
        .toSet();

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFBFF6C3),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      padding: const EdgeInsets.all(10.0),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        calendarStyle: const CalendarStyle(
          todayDecoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          todayTextStyle: TextStyle(color: Colors.white),
          selectedTextStyle: TextStyle(color: Colors.white),
        ),
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleTextStyle: TextStyle(
            fontFamily: 'Readex Pro',
            fontSize: 18,
          ),
        ),
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            if (_eventDays.contains(_normalizeDate(day))) {
              return Container(
                margin: const EdgeInsets.all(6.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 19, 37, 61),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '${day.day}',
                  style: const TextStyle(color: Colors.white),
                ),
              );
            }
            return null;
          },
          todayBuilder: (context, day, focusedDay) {
            return Container(
              margin: const EdgeInsets.all(6.0),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Text(
                '${day.day}',
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
          selectedBuilder: (context, day, focusedDay) {
            return Container(
              margin: const EdgeInsets.all(6.0),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: Text(
                '${day.day}',
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _eventscontainer(List<Map<String, dynamic>> data) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: data.map((event) {
          return EventsCard(
            image: event['image'],
            title: event['title'],
            date: event['date'],
            sum: event['sum'],
            onReadMore: () {
              //
            },
          );
        }).toList(),
      ),
    );
  }
}

class EventsCard extends StatelessWidget {
  final String image;
  final String title;
  final DateTime? date;
  final String sum;
  final VoidCallback onReadMore;

  const EventsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.date,
    required this.sum,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailTrashieevent(event: {
                              'image': image,
                              'title': title,
                              'date': date,
                              'sum': sum,
                            }),
                          ),
                        );
                      },
                      child: const Text(
                        'View Details',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          date != null
                              ? '${date!.day} ${_getMonthName(date!.month)} ${date!.year}'
                              : 'TBA',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const Icon(Icons.calendar_month_rounded,
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

  String _getMonthName(int month) {
    const monthNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return monthNames[month - 1];
  }
}
