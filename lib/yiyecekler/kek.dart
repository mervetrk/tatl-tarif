import 'package:flutter/material.dart';

import 'package:testflutter/sayfa2.dart';
class kek extends StatefulWidget {
  @override
  _kekState createState() => _kekState();
}

class _kekState extends State<kek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Kek Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/kek.jpg'),
            ),

            Text(
              "MALZEMELER:"
                  "1 su bardağı süt,"
                  "1 su bardağı toz şeker,"
                  "3 su bardağı un,"
                  "1 paket vanilya,"
                  "1 paket kabartma tozu,"
                  "1 su bardağı sıvı yağ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "HAZIRLANIŞI:"
                  "İlk olarak yumurta ve şekeri bir kapta çırpalım."
                  "Daha sonra sıvı yağ, un, kabartma tozu ve vanilyayı ekleyelim. Biraz daha çırpıp 180 derecede ısıttığımız fırında pişirelim."
                  "AFİYET OLSUN :))",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.black54,
                decoration: TextDecoration.underline,
              ),
            ),
            RaisedButton(
              child: Text('GERİ'),
              color: Colors.amber[100],
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> sayfa2()),
                );
              },
            ),
          ],
        )
    );
  }
}