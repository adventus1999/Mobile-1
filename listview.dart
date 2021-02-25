import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adventus Trifanly Rajagukguk (5SIA1)'),
        ),
        body: MyList(),
      ),
    );
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
 final List<Mahasiswa> mhs = MahasiswaList.getMahasiswa();

  Widget build(BuildContext context) {
    return Container(
      child: mhs.length > 0
          ? ListView.builder(
              itemCount: mhs.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                      mhs.removeAt(index);
                    });
                  },
                  secondaryBackground: Container(
                    child: Center(
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.red,
                  ),
                  background: Container(),
                  child: MahasiswaCard(mahasiswa: mhs[index]),
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                );
              },
            )
          : Center(child: Text('No Items')),
    );
  }
}
// Objek Model
class Mahasiswa {
  String namalengkap;
  String jurusan;
  String alamat;
  String fotoURL;

  Mahasiswa({this.namalengkap, this.alamat, this.jurusan, this.fotoURL});
}

// Objek Data
class MahasiswaList {
  static List<Mahasiswa> getMahasiswa(){
    return [
      Mahasiswa(
        namalengkap: 'Adventus Trifanly Rajagukguk',
        jurusan: 'Sistem Informasi',
        alamat: 'Lubuk Pakam',
        fotoURL: 'https://lh3.googleusercontent.com/ogw/ADGmqu89gj9FxdUaSvS8oxOI3ewIg5zK_GD2RCc36KAY=s32-c-mo',
      ),
      Mahasiswa(
        namalengkap: 'Nurcahyo Budi Nugroho',
        jurusan: 'Sistem Informasi',
        alamat: 'Medan',
        fotoURL: 'https://m.media-amazon.com/images/M/MV5BNjE3NDQyOTYyMV5BMl5BanBnXkFtZTcwODcyODU2Mw@@._V1_UY209_CR5,0,140,209_AL_.jpg',
      ),
      Mahasiswa(
        namalengkap: 'Rika Wahyuni',
        jurusan: 'Ekonomi',
        alamat: 'Siantar',
        fotoURL: 'https://m.media-amazon.com/images/M/MV5BMjJkNDg5ZDctM2RlZS00NjFmLTkxZjktMWE5NGQzMDg4NDFhXkEyXkFqcGdeQXVyMTMwMDM1OTQ@._V1_UY209_CR6,0,140,209_AL_.jpg',
      ),
    ];
  }
}

//Objek View 
class MahasiswaCard extends StatelessWidget {
  final Mahasiswa mahasiswa;
  
  MahasiswaCard({this.mahasiswa});

  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading:  CircleAvatar(
              backgroundImage: NetworkImage(mahasiswa.fotoURL),),
            title:  Text(mahasiswa.namalengkap),
            subtitle: Text(mahasiswa.jurusan),
            trailing: Text(mahasiswa.alamat),
          )
        ],
      ),
    );
  }
}
