import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'proditeknik.dart';

class ProdiDetail extends StatefulWidget {
  final Prodi prodi;

  const ProdiDetail({Key? key, required this.prodi}) : super(key: key);

  @override
  _ProdiDetailState createState() => _ProdiDetailState();
}

class _ProdiDetailState extends State<ProdiDetail> {
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
      appBar: AppBar(
        title: Text('Profil Program Studi'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); 
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 77, 112, 157),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Image(
                      image: AssetImage(widget.prodi.imageUrl),
                      height: 150,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VISI',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25406E),
                      ),
                    ),
                    Text(
                      widget.prodi.visi,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'MISI',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25406E),
                      ),
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        widget.prodi.misi.length,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            '${index + 1}. ${widget.prodi.misi[index].detail}',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Akreditasi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25406E),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.prodi.akreditasi,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Koordinator Program Studi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25406E),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.prodi.koorprodi,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daftar Dosen',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF25406E),
                            ),
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.prodi.dosenList.length,
                              itemBuilder: (context, index) {
                                return buildDosenCard(
                                    widget.prodi.dosenList[index]);
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              _launchWebsite(widget.prodi.lamanWebsiteDosen);
                            },
                            child: Text(
                              'More',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        _launchWebsite(widget.prodi.lamanWebsiteResmi);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Laman Website Resmi',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF25406E),
                            ),
                          ),
                          Text(
                            widget.prodi.lamanWebsiteResmi,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        _launchEmail(widget.prodi.email);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF25406E),
                            ),
                          ),
                          Text(
                            widget.prodi.email,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Prestasi Mahasiswa:',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF25406E)),
                    ),
                    SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: widget.prodi.prestasiMahasiswa
                            .map((prestasi) => buildPrestasiCard(prestasi))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDosenCard(Dosen dosen) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(dosen.foto),
            ),
            SizedBox(height: 8),
            Text(
              dosen.nama,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              'Jabatan: ${dosen.jabatan}',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Text(
              'NIP: ${dosen.nip}',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Text(
              'Bidang Keahlian: ${dosen.bidangKeahlian}',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPrestasiCard(PrestasiMahasiswa prestasi) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(),
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(prestasi.foto),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              prestasi.nama,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              prestasi.prestasi,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
