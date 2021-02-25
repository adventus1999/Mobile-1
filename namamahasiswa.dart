import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,

    home: new HomePage(),
    //Mendefinisikan Routing yang mengatur halaman app
    routes: {
      '/mahasiswa': (BuildContext context) => Mahasiswa(),
      '/dosen': (BuildContext context) => Dosen(),
    },
  ));
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("HomePage"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.face),
                tooltip: 'Mahasiswa',
                onPressed: () {
                  Navigator.of(context).pushNamed("/mahasiswa");
                }),
            IconButton(
                icon: Icon(Icons.account_box),
                tooltip: 'Dosen',
                onPressed: () {
                  Navigator.of(context).pushNamed("/dosen");
                }),
          ],
        ),
        body: Center(
          child: Text('Halaman Utama', style: TextStyle(fontSize: 32)),
        ));
  }
}

//class MahasiswaPage   
class Mahasiswa extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mahasiswa"),        
        ),
        body: Center(
          child: Column(
            children: [
              Text('Nama : Adventus Trifanly Rajagukguk'),
              Text('Kelas : 5SIA1'),
              Text('NIRM : 2018020468'),
              Image.network('https://lh3.googleusercontent.com/ogw/ADGmqu89gj9FxdUaSvS8oxOI3ewIg5zK_GD2RCc36KAY=s83-c-mo'),
            ],
           ),
          ),
      );
  }
}
//class DosenPage 
class Dosen extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Dosen"),        
        ),
        body: Center(
          child: Text('Halaman Dosen', style: TextStyle(fontSize: 32)),
        ));
  }
}
