import 'package:flutter/material.dart';
import 'package:testflutter/sayfa3.dart';

class kurabiye extends StatefulWidget {
  @override
  _kurabiyeState createState() => _kurabiyeState();
}

class _kurabiyeState extends State<kurabiye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Kurabiye Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/kurabiye.jpg'),
            ),

            Text(
              "MALZEMELER:"
                  "250 gram margarin ,"
                  "Yarım su bardağı toz şeker,"
                  "2,5 su bardağı un,"
                  "1 paket vanilya,"
                  "1 paket kabartma tozu,"
                  "1 adet yumurta sarısı,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "HAZIRLANIŞI:"
                  "İlk olarak margarin, yumurta ve şekeri yoğuralım."
                  "Daha sonra azar azar un, kabartma tozu ve vanilyayı ekleyelim."
                  "Hamurumuz kıvam aldığında şekil verip 180 derece fırında pişirelim."
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
