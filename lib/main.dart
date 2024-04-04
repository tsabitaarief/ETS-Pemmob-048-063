import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'proditeknik.dart';
import 'profilproditeknik.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const MaterialColor white = MaterialColor(0xFFFFFFFF, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas Teknik UPN "Veteran" Jawa Timur',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Fakultas Teknik UPN "Veteran" Jawa Timur'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _launchWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.darken,
            ),
            child: Image.asset(
              'bgfakteknik.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Fakultas Teknik UPN "Veteran" Jawa Timur',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'Dalam perjalanannya sesuai dengan aturan dari Kementerian Pendidikan Kebudayaan Riset dan Teknologi yang sebelumnya bernama Kemenristekdikti tentang Penegerian UPN “Veteran” Jawa Timur berdasarkan Peraturan Presiden Republik Indonesia Nomor 122 Tahun 2014, tanggal 6 Oktober 2014, Pada tahun Akademik 2016/2017 FTI dan FTSP bergabung menjadi Fakultas Teknik, dengan bertambahnya Prodi Teknik Mesin, Magister Ilmu Lingkungan dan Fisika.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Prodi.samples.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ProdiDetail(
                                      prodi: Prodi.samples[index]);
                                },
                              ),
                            );
                          },
                          child: buildProdiCard(Prodi.samples[index]),
                        );
                      },
                    ),
                    const SizedBox(height: 2),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProfilDetailScreen();
                            },
                          ),
                        );
                      },
                      child: buildProfilCard(),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        _launchWebsite('https://ft.upnjatim.ac.id/');
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Laman Website Resmi',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'https://ft.upnjatim.ac.id/',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        _launchEmail('ft@upnjatim.ac.id');
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'ft@upnjatim.ac.id',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            ),
                          ),
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
    );
  }
}

Widget buildProdiCard(Prodi prodi) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      children: [
        Image(image: AssetImage(prodi.imageUrl)),
        Container(
          height: 10,
          decoration: BoxDecoration(
            color: Color(0xFF3F6392),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildProfilCard() {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      children: [
        Column(
          children: [
            Image(image: AssetImage('profil.png')),
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: Color(0xFF3F6392),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class ProfilDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: Profil.detail.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Profil Kami'),
            bottom: TabBar(
              tabs: Profil.detail.map((profil) => Tab(text: profil.nama)).toList(),
            ),
          ),
          body: TabBarView(
            children: Profil.detail.map((profil) => ProfilDetail(profil: profil)).toList(),
          ),
        ),
      ),
    );
  }
}

class ProfilDetail extends StatelessWidget {
  final Profil profil;

  const ProfilDetail({Key? key, required this.profil}) : super(key: key);

  _launchWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage(profil.assetImage)),
          const SizedBox(height: 8),
          Text('${profil.nama}', style: TextStyle(fontSize: 16,),),
          const SizedBox(height: 8),
          Text('${profil.ttl}', style: TextStyle(fontSize: 16,),),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {_launchEmail(profil.email);},
            child: Text('${profil.email}', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline,),),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {_launchWebsite(profil.github);},
            child: Text('${profil.github}', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline,),),
          ),
        ],
      ),
    );
  }
}

class Profil {
  String assetImage;
  String nama;
  String ttl;
  String email;
  String notelp;
  String github;

  Profil({
    this.assetImage = '',
    this.nama = '',
    this.ttl = '',
    this.email = '',
    this.notelp = '',
    this.github = '',
  });

  static List<Profil> detail = [
    Profil(
      assetImage: 'assets/profputi.png',
      nama: 'Puti Tsabita Najwa Arief',
      ttl: 'Surabaya, 31 Mei 2003',
      email: '22082010048@student.upnjatim.ac.id',
      github: 'https://github.com/tsabitaarief',
    ),
    Profil(
      assetImage: 'assets/profvione.png',
      nama: 'Vione Mangunsong',
      ttl: 'Timika, 9 November 2004',
      email: '22082010063@student.upnjatim.ac.id',
      github: 'https://github.com/szuify',
    )
  ];
}


