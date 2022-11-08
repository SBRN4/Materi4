// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'HalamanKetiga.dart';

void main() {
  runApp( MaterialApp(
    home: HalamanHome(),
  ));
}

class HalamanHome extends StatelessWidget {
  // const HalamanHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[

            Text(
            'Ini adalah halaman Home',
            style: Theme.of(context).textTheme.headline5,
            ),

            const Text('Nama Lengkap : Asipp Baik'),
            const Text('Kelas : XII RPL 2'),
            const Text('No Absen : 02'),

            MaterialButton(
              
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama() ));

              },child: const Text('Halaman Pertama'),
              color: Colors.blue,
              textColor: Colors.black,
            ),

            MaterialButton(

              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));
              },child: const Text('HalamanKedua'),

              color: Colors.pink,
              textColor: Colors.deepPurple,
              ),

              MaterialButton(

              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga() ));

              },child: const Text('HalamanKetiga'),
              color: Colors.yellow,
              textColor: Colors.indigo,
              )

          ],
        ),
      ),
    );
  }
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Ini adalah halaman pertama'),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Ini adalah halaman kedua'),
      ),
    );
  }
}