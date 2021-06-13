import 'package:flutter/material.dart';
import 'package:testflutter/sayfa1.dart';

class muhalebi extends StatefulWidget {
  @override
  _muhalebiState createState() => _muhalebiState();
}

class _muhalebiState extends State<muhalebi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Muhallebi Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/muhallebi.jpg'),
            ),

            Text(
              "MALZEMELER:"
                  "5 su bardağı süt,"
                  "1 su bardağı toz şeker,"
                  "Yarım çay bardağı un,"
                  "1 paket vanilya,"
                  "3 yemek kaşığı nişasta,"
                  "1 tatlı kaşığı tereyağı",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "HAZIRLANIŞI:"
                  "İlk olarak toz şeker, un ve nişastayı tencerede karıştıralım."
                  "Daha sonra sütü ilave edip kaynayana kadar pişirelim."
                  "Kaynadıktan sonra altını kapatıp tereyağı ve vanilyayı ekleyelim."
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> sayfa1()),
                );
              },
            ),
          ],
        )
    );
  }
}
