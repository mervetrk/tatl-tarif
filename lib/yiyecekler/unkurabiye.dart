import 'package:flutter/material.dart';
import 'package:testflutter/sayfa3.dart';

class unkurabiye extends StatefulWidget {
  @override
  _unkurabiyeState createState() => _unkurabiyeState();
}

class _unkurabiyeState extends State<unkurabiye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Un Kurabiyesi Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/un-kurabiyesi_2535790_810x458.jpg'),
            ),

            Text(
              "MALZEMELER:"
                  "250 gram margarin ,"
                  "1 çay bardağı sıvı yağ,"
                  "1 su bardağı toz şeker,"
                  "2,5 su bardağı un,"
                  "1 paket vanilya,"
                  "1 paket kabartma tozu,"
                  "1 adet yumurta,"
                  "5 yemek kaşığı nişasta,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "HAZIRLANIŞI:"
                  "İlk olarak margarin, sıvı yağ, yumurta ve şekeri yoğuralım."
                  "Daha sonra azar azar un, nişasta, kabartma tozu ve vanilyayı ekleyelim."
                  "Hamurumuz kıvam aldığında şekil verip 180 derece fırında pişirelim. Kurabiyelerimiz çok pişmesin."
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> sayfa3()),
                );
              },
            ),
          ],
        )
    );
  }
}