import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,

    home: new HomePage(),
    //Mendefinisikan Routing yang mengatur halaman app
    routes: {
      '/mahasiswa': (BuildContext context) => Mahasiswa(),
      '/program': (BuildContext context) => Program(),
    },
  ));
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("UTS MOBILE 1"),  
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.child_care),
                tooltip: 'DATA MAHASISWA',
                onPressed: () {
                  Navigator.of(context).pushNamed("/mahasiswa");
                }),
            IconButton(
                icon: Icon(Icons.keyboard),
                tooltip: 'PROGRAM PERHITUNGAN',
                onPressed: () {
                  Navigator.of(context).pushNamed("/program");
                }),
          ],
        ),
        body: Center(
          child: Text('ADVENTUS RAJAGUKGUK', style: TextStyle(fontSize: 32)),
        ));
  }
}

//class Mahasiswa
class Mahasiswa extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("DATA MAHASISWA"),        
        ),
      
        body: new Column(
    children: <Widget>[
      const Divider(
        height: 1.0,
      ),
      new Text('DATA MAHASISWA', style: TextStyle(fontSize: 32)),
      new ListTile(
        leading: const Icon(Icons.person),
        title: const Text('ADVENTUS TRIFANLY RAJAGUKGUK'),
        subtitle: const Text('Nama Mahasiswa'),
      ),
      new ListTile(
        leading: const Icon(Icons.label),
        title: const Text('Sistem Informasi / 5SIA1'),
        subtitle: const Text('Jurusan / Kelas'),
      ),

        ],
      ),
     );
  }
}

//class Dosen 
    class Program extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("PROGRAM PERHITUNGAN"),        
        ),
      body: NurcahyoApp(),
    );
  }
}

class NurcahyoApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<NurcahyoApp> {
  final txtpanjang = TextEditingController();
  final txtlebar = TextEditingController();

  String hasil = '';

  onHitung() {
    setState(() {
      
      var luas = int.parse(txtpanjang.text) * int.parse(txtlebar.text);
      hasil = 'Luas Persegi = $luas';
    });
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: txtpanjang,
            decoration: new InputDecoration(
              labelText: "Panjang",
            ),
          ),
          TextField(
            controller: txtlebar,
            decoration: new InputDecoration(
              labelText: "Lebar",
            ),
          ),
          RaisedButton(
            child: Text("Hitung"),
            onPressed: onHitung,
          ),
          Text("$hasil"),
      
  
        ],
      ),
    );
  }
}
