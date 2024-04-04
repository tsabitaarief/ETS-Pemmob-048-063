class Prodi {
  String imageUrl;
  String visi;
  List<Misi> misi;
  String akreditasi;
  String koorprodi;
  List<Dosen> dosenList;
  String lamanWebsiteDosen;
  String lamanWebsiteResmi;
  String email;
  List<PrestasiMahasiswa> prestasiMahasiswa;

  Prodi(this.imageUrl, this.visi,
      {this.misi = const [],
      this.akreditasi = '',
      this.koorprodi = '',
      this.dosenList = const [],
      this.lamanWebsiteDosen = '',
      this.lamanWebsiteResmi = '',
      this.email = '',
      this.prestasiMahasiswa = const []});

  static List<Prodi> samples = [
    Prodi(
      'assets/kimia.png',
      'Menjadi Program Studi yang unggul dalam IPTEK di bidang Teknik Kimia yang berkarakter bela negara.',
      misi: [
        Misi(
            'Menyelenggarakan proses pendidikan dan pengajaran yang berkompetensi,  berwawasan technopreneur dan berkarakter bela negara.'),
        Misi(
            'Menyelenggarakan kegiatan penelitian dasar dan terapan, khususnya di bidang pengelolaan sumber daya alam, energi yang berwawasan lingkungan.'),
        Misi(
            'Menyelenggarakan kegiatan pengabdian kepada masyarakat melalui penerapan iptek.'),
        Misi(
            'Menyelenggarakan tata kelola program studi yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.'),
        Misi(
            'Mengembangkan kualitas tenaga pengajar, tenaga kependidikan unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan , dan manajerial.'),
        Misi(
            'Meningkatkan sistem pengelolaan sarana dan prasarana kegiatan proses belajar mengajar ,laboratorium dasar dan, laboratorium profesional.'),
        Misi(
            'Menyelenggarakan kerjasama dengan pemerintah, industri, lembaga pendidikan dan penelitian, termasuk luar negeri.'),
      ],
      akreditasi: 'A',
      koorprodi: 'Dr. Ir. Sintha Soraya Santi, M.T.',
      dosenList: [
        Dosen(
          'Prof. Dr. Ir. Sri Redjeki, M.T.',
          'assets/dosentekkim1_Sri-Rejeki.jpg',
          'Guru Besar',
          '19570314 198603 2 001',
          'Kimia Organik',
        ),
        Dosen(
          'Prof. Dr. Ir. Ni Ketut Sari, M.T.',
          'assets/dosentekkim2_Ni-Ketut-Sari.png',
          'Guru Besar',
          '19650731 199203 2 001',
          'Kimia Fisik',
        ),
        Dosen(
          'Dr. Ir. Srie Muljani, M.T.',
          'assets/dosentekkim3_Srie-Muljani.png',
          'Lektor Kepala',
          '19611112 198903 2 001',
          'Kimia Organik',
        ),
        Dosen(
          'Dr. Ir. Sintha Soraya Santi, M.T.',
          'assets/dosentekkim4_Sintha-Soraya.png',
          'Koorprodi Teknik Kimia',
          '19660621 199203 2 001',
          'Kimia Fisik',
        ),
      ],
      lamanWebsiteDosen: 'https://tekkimia.upnjatim.ac.id/dosen-dan-tendik/',
      lamanWebsiteResmi: 'https://tekkimia.upnjatim.ac.id/',
      email: 'tekkimia@upnjatim.ac.id',
      prestasiMahasiswa: [
        PrestasiMahasiswa('assets/maprestekkim.jpg', 'Nabilah Atika Suri, dkk.',
            'Juara 2 LKTI OKTAN ITB 2023'),
        PrestasiMahasiswa('assets/maprestekkim2.jpeg', 'Irham Alva Royyan',
            'Juara 1 Essay Nasional dalam lomba Fresh Competition 2023'),
        PrestasiMahasiswa(
            'assets/maprestekkim3.jpg',
            '8 Mahasiswa Teknik Kimia',
            'Diberangkatkan Untuk Bina Desa Giripurno'),
      ],
    ),
    Prodi(
      'assets/industri.png',
      'Menjadi program studi unggul dalam pengembangan keilmuan teknik industri dalam meningkatkan produktifitas dan kualitas sistem yang berkarakter Bela Negara',
      akreditasi: 'Unggul',
      koorprodi: 'Ir. Rusindiyanto, MT.',
      dosenList: [
        Dosen(
          'Dr. Farida Pulansari, ST., MT., CSCM., IPM.',
          'assets/dosentekin1.png',
          'Lektor',
          '197902032021212007	',
          'Logistik dan Manajemen Supply Chain',
        ),
        Dosen(
          'Dr. Ir. Minto Waluyo, MM.',
          'assets/dosen2.jpg',
          'Lektor Kepala	',
          '196111301990031001',
          'Manajemen Bisnis dan Kewirausahaan',
        ),
        Dosen(
          'Nur Rahmawati, ST., MT.',
          'assets/dosentekin3.jpeg',
          'Asisten Ahli',
          '198708012019032012',
          'Logistik dan Manajemen Supply Chain',
        ),
        Dosen(
          'Ir. Endang Pudji W., MMT.',
          'assets/dosentekin4.jpeg',
          'Lektor',
          '195912281988032001',
          'Sistem dan Proses Manufaktur',
        ),
      ],
      lamanWebsiteDosen: 'https://tekindustri.upnjatim.ac.id/dosen-staff/',
      lamanWebsiteResmi: 'https://tekindustri.upnjatim.ac.id/',
      email: 'teknik.industri@upnjatim.ac.id',
      prestasiMahasiswa: [
        PrestasiMahasiswa('assets/maprestekin1.jpeg', 'Muhamad Mukhtarul Haqi',
            'Juara 2 Kompetisi Esai Nasional'),
        PrestasiMahasiswa('assets/maprestekin1.jpeg',
            'Muhammad Mahfudh Bil Haqqi', 'Juara 2 Kompetisi Esai Nasional'),
        PrestasiMahasiswa('assets/maprestekin1.jpeg',
            'Tryandika Rizkat Prashodang', 'Juara 2 Kompetisi Esai Nasional'),
      ],
    ),
    Prodi(
      'assets/lingkungan.png',
      'Menjadi Program Studi Teknik Lingkungan yang unggul, menghasilkan lulusan yang berdaya saing di bidang rekayasa dan manajemen lingkungan, dengan karakter bela negara.',
      misi: [
        Misi(
            'Menghasilkan lulusan yang dapat berkarir secara professional di bidang Teknik Lingkungan dengan karakter bela negara, yang mampu bersaing dalam era global. Meliputi:'),
        Misi(
            'Menguasai bekal dasar ilmu pengetahuan dan keterampilan, serta mampu menerapkannya untuk memecahkan masalah dalam pekerjaan pada bidang rekayasa dan manajemen lingkungan'),
        Misi(
            'Kemampuan untuk terus mengembangkan keilmuan Teknik Lingkungan, serta mampu beradaptasi dan mengikuti perkembangan teknologi inovatif pada bidangnya'),
        Misi(
            'Memiliki jiwa sosial, kebangsaan dan kepekaan terhadap kondisi lingkungan'),
        Misi(
            'Memiliki kemampuan dan tanggung jawab untuk mengomunikasikan ide-ide baik lisan maupun tulisan, secara ilmiah, mampu mengambil inisiatif yang tepat dan memimpin kelompok kerja di bidang yang relevan.')
      ],
      akreditasi: 'A',
      koorprodi: 'Firra Rosariawari, S.T., M.T.',
      dosenList: [
        Dosen(
          'Prof. Euis Nurul Hidayah, MT., PhD.',
          'assets/dosentekling1.png',
          'Pofesor/Guru Besar',
          '19771023 202121 2 004',
          'Pengolahan dan Pengelolaan Air Bersih dan Air Limbah',
        ),
        Dosen(
          'Prof. Dr. Ir. Novirina Hendrasarie, MT.',
          'assets/dosentekling2.png',
          'Guru Besar',
          '19681126 199403 2 001',
          'Water & Wastewater technology and Environmental Management',
        ),
        Dosen(
          'Raden Kokoh Haryo Putro ST., MT.',
          'assets/dosentekling3.png',
          'Kepala Lab. Riset Dan Terapan',
          '19900905 201903 1 026',
          'Rekayasa Lingkungan',
        ),
        Dosen(
          'Aussie Amalia, ST., MSc.',
          'assets/dosentekling4.png',
          'Kepala Lab. Dasar',
          '172 1992 1124 059',
          'Bioteknologi Lingkungan dan Pengolahan Air Limbah',
        ),
      ],
      lamanWebsiteDosen:
          'https://teklingk.upnjatim.ac.id/pimpinan-dan-staff-pengajar/',
      lamanWebsiteResmi: 'https://teklingk.upnjatim.ac.id/',
      email: 'teknik.lingkungan@upnjatim.ac.id',
      prestasiMahasiswa: [
        PrestasiMahasiswa(
            'assets/maprestekling1.jpeg',
            'Virgirina Salja Nafisah Islam',
            'Juara 1 Lomba Panjat Tebing Olympic Game Mix PORPROV'),
        PrestasiMahasiswa('assets/maprestekling2.jpg', 'Mohamad Sholikin',
            'Best Presentation PRISMA 10'),
        PrestasiMahasiswa('assets/maprestekling3.jpeg', 'Rania Ichdatunnisa',
            'Exchange Student at Mahidol University'),
      ],
    ),
    Prodi(
      'assets/mesin.png',
      'Menjadi Program Studi Teknik Mesin Berkarakter Bela Negara',
      misi: [
        Misi(
            'Menyelenggarakan dan mengembangkan pendidikan berkarakter bela negara untuk menghasilkan lulusan yang mampu mengaplikasikan keahlian dengan memanfaatkan IPTEK di bidang Teknik Mesin serta menumbuhkan inovasi untuk menunjang proses industrialisasi, teknologi Biomedik, serta siap menghadapi tantangan era revolusi industri 4.0.'),
        Misi(
            'Meningkatkan budaya riset dalam pengembangan IPTEK bidang Teknik Mesin yang berdaya guna untuk kesejahteraan masyarakat.'),
        Misi(
            'Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal di bidang Teknik Mesin.'),
        Misi(
            'Meningkatkan manajemen program studi dan pengelolaan sarana prasarana terpadu, guna bisa menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintahan dan swasta.'),
      ],
      akreditasi: 'Baik',
      koorprodi: 'Dr.T.Ir. Luluk Edahwati, MT.',
      dosenList: [
        Dosen(
          'Dr. Wahyu Dwi Lestari, S.Pd.,MT.',
          'assets/dosenmesin1.jpeg',
          'Dosen',
          '20219910114203',
          '',
        ),
        Dosen(
          'Tria Puspa Sari, S.T., M.S.',
          'assets/dosenmesin2.jpg',
          'Dosen',
          '20219940311205',
          '',
        ),
        Dosen(
          'Ndaru Adyono, S.Si., M.T.',
          'assets/dosenmesin3.jpg',
          'Dosen',
          '20119900125204',
          '',
        ),
        Dosen(
          'Wiliandi Saputro, S.T., M.Eng.',
          'assets/dosenmesin4.jpg',
          'Dosen',
          '21119940726300',
          '',
        ),
      ],
      lamanWebsiteDosen: 'https://tekmesin.upnjatim.ac.id/dosen/',
      lamanWebsiteResmi: 'https://tekmesin.upnjatim.ac.id/',
      email: 'teknik.mesin@upnjatim.ac.id',
      prestasiMahasiswa: [
        PrestasiMahasiswa('assets/SateKlopo.jpeg', 'Nama Mahasiswa 1',
            'Prestasi Mahasiswa 1'),
        PrestasiMahasiswa(
            'foto2.jpg', 'Nama Mahasiswa 2', 'Prestasi Mahasiswa 2'),
        PrestasiMahasiswa(
            'foto3.jpg', 'Nama Mahasiswa 3', 'Prestasi Mahasiswa 3'),
      ],
    ),
    Prodi(
      'assets/pangan.png',
      'Menjadi Program Studi Teknologi Pangan yang berkualitas di bidang ilmu dan teknologi pangan yang berkarakter bela negara pada tahun 2024.',
      misi: [
        Misi(
            'Menyelenggarakan pendidikan dan pembelajaran berkualitas di bidang Teknologi berkarakter bela negara.'),
        Misi(
            'Mengembangkan sumber daya manusia yang berkualitas dalam bidang pendiidkan, pengajaran, dan penelitian.'),
        Misi(
            'Meningkatkan kualitas dan sistem pengolahan dan pengadaan sarana dan prasarana laboratorium.'),
        Misi(
            'Menyelenggarakan kegiatan penelitian untuk pengembangan ilmu teknologi paangan melalui rekayasa pangan berbahan baku lokal.'),
        Misi(
            'Menyelenggarakan tata kelola yang baik, sehat, bersih, dan transparan dalam rangka mencapai akuntabilitas pengelolaan program studi.'),
        Misi(
            'Menyelenggarakan kerjasama pendidikan, penelitian, dan pengabdian kepada masyarakat dengan mitra baik nasional maupun internasional.'),
      ],
      akreditasi: 'B',
      koorprodi: 'Dr.T.Ir. Luluk Edahwati, MT.',
      dosenList: [
        Dosen(
          'Dr. Rosida, S.TP, MP',
          'assets/dosentekpang1.jpeg',
          'Lektor',
          '197102192021212004',
          'Biokimia dan Gizi Pangan',
        ),
        Dosen(
          'Dr. Ir. Sri Winarti, MP',
          'assets/dosentekpang2.png',
          'Lektor Kepala',
          '19630708 198903 2 002',
          'Mikrobiologi dan Keamanan Pangan',
        ),
        Dosen(
          'Dr. Dra. Jariyah, MP',
          'assets/dosentekpang3.jpg',
          'Lektor Kepala',
          '19650403 199103 2 001',
          'Rekayasa Proses Pangan',
        ),
        Dosen(
          'Rosida, S.TP M.Kes',
          'assets/dosentekpang4.jpg',
          'Lektor',
          '197012252021212010',
          'Kimia dan Analisis Pangan',
        ),
      ],
      lamanWebsiteDosen: 'https://tekpangan.upnjatim.ac.id/dosen/',
      lamanWebsiteResmi: 'https://tekpangan.upnjatim.ac.id/',
      email: 'progdi.tp@upnjatim.ac.id',
      prestasiMahasiswa: [
        PrestasiMahasiswa('assets/maprestekpang1.jpeg', 'Regita Widya Pramesti',
            'Juara 1 Kumite Regional Elite Putri Kelas A. KJUO XVII 2023'),
        PrestasiMahasiswa('assets/maprestekpang2.jpeg', 'Regita Widya Pramesti',
            'Juara 2 Lomba Demo Kejuaraan Junjitsu Unesa Open XVII 2023'),
        PrestasiMahasiswa(
            'assets/maprestekpang3.png',
            'Talitha Ayu Daffa Athallah',
            'Winner Duta Lingkungan Jawa Timur 2022'),
      ],
    ),
  ];
}

class Misi {
  String detail;

  Misi(this.detail);
}

class Dosen {
  String nama;
  String foto;
  String jabatan;
  String nip;
  String bidangKeahlian;

  Dosen(
    this.nama,
    this.foto,
    this.jabatan,
    this.nip,
    this.bidangKeahlian,
  );
}

class PrestasiMahasiswa {
  String foto;
  String nama;
  String prestasi;

  PrestasiMahasiswa(this.foto, this.nama, this.prestasi);
}
