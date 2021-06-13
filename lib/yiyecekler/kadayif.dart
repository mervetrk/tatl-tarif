import 'package:flutter/material.dart';
import 'package:testflutter/sayfa4.dart';
class kadayif extends StatefulWidget {
  @override
  _kadayifState createState() => _kadayifState();
}

class _kadayifState extends State<kadayif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Kadayıf Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/kadayıf.jpg'),
            ),

            Text(
              "MALZEMELER:"
                  "500 gram kadayıf,"
                  "200 gram tereyağı,"
                  "2 su bardağı ceviz,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "ŞERBET İÇİN:"
                  "3 su bardağı su,"
                  "2,5 su bardağı toz şeker,"
                  "Yarım limon suyu,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink[700],
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "HAZIRLANIŞI:"
                  "İlk olarak şerbeti hazırlayalım."
                  "Kadayıfların üzerine eriyen tereyağını döküp karıştıralım."
                  "Daha sonra yarısını tepsiye alalım ve cevizleri dökelim."
                  "Kalan yarısını da üzerine koyalım ve pişirelim."
                  "Şerbet ve tatlı sıcak olarak dökülecek."
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> sayfa4()),
                );
              },
            ),
          ],
        )
    );
  }
}
