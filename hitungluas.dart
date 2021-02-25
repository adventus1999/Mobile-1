import 'package:flutter/material.dart';

void main() => runApp(App12());

class App12 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Persegi Panjang',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adventus Rajagukguk (5SIA1)'),
        ),
        body: NurcahyoApp() ,
      ),
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
      hasil = "Luas Persegi = $luas ";
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
              labelText: "Input Panjang",
            ),
          ),
          TextField(
            controller: txtlebar,
            decoration: new InputDecoration(
              labelText: "Input Lebar",
            ),
          ),
          RaisedButton(
            child: Text("Hitung"),
            onPressed: onHitung,
          ),
          Text(hasil),
        ],
      ),
    );
  }
}
