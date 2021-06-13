import 'package:flutter/material.dart';
import 'package:testflutter/sayfa2.dart';

class pasta extends StatefulWidget {
  @override
  _pastaState createState() => _pastaState();
}

class _pastaState extends State<pasta> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Pasta Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/pasta.jpg'),
            ),

            Text(
              "KEK MALZEMELERİ:"
                  "3 yumurta,"
                  "1 su bardağı toz şeker,"
                  "1,5 su bardağı un,"
                  "1 paket kabartma tozu,"
                  "1 yemek kaşığı sıvı yağ,"
                  "2 yemek kaşığı kakao,"
                  "1 çay bardağı süt",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "KREMA:"
                  "5 yemek kaşığı toz şeker,"
                  "2,5 yemek kaşığı un,"
                  "1 paket vanilya,"
                  "1 yemek kaşığı tereyağı,"
                  "3 yemek kaşığı kakao,"
                  "2 su bardağı süt",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink[700],
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "HAZIRLANIŞI:"
                  "Yumurta, toz şeker, un, sıvı yağ, kabartma tozu, kakao ve sütü bir kapta çırpalım."
                  "Çırptığımız karışımı kalıba döküp 180 derece fırında pişirelim."
                  "Kekimiz pişerken bir tencerede üzeri için gerekli malzemeleri pişirelim."
                  "Kekimiz soğuyunca 2 eşit parçaya bölüp hazırladığımız kremadan içerisine ve üzerine sürüp süsleyelim."
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
