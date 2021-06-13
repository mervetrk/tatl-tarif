import 'package:flutter/material.dart';
import 'package:testflutter/sayfa4.dart';

class baklava extends StatefulWidget {
  @override
  _baklavaState createState() => _baklavaState();
}

class _baklavaState extends State<baklava> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Baklava Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/baklava.jpg'),
            ),

            Text(
              "MALZEMELER:"
                  "100 gram tereyağı,"
                  "Yarım çay bardağı süt,"
                  "Yarım çay bardağı sıvı yağ,"
                  "1 adet yumurta,"
                  "2 yemek kaşığı sirke,"
                  "1/4 çay kaşığı tuz,"
                  "2 yemek kaşığı yoğurt,"
                  "1 çay bardağı su,"
                  "4 su bardağı un,",
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
                  "Hamurun bütün malzemelerini bir kapta yoğuralım."
                  "Daha sonra hamuru 24 eşit parçaya bölelim. Birkaç parçayı üst üste koyup nişasta ile açalım."
                  "Açtığımız hamurları tepsiye koyup her katı yağlayalım,"
                  "Yarısına geldiğimizde içerisine ceviz koyalım ve aynı işlemi tekrarlayalım."
                  "Hamur pişerken şerbetin malzemelerini bir tencereye koyup kaynatalım."
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
