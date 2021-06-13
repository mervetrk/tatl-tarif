import 'package:flutter/material.dart';
import 'package:testflutter/sayfa2.dart';

class browni extends StatefulWidget {
  @override
  _browniState createState() => _browniState();
}

class _browniState extends State<browni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Browni Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/browni.jpg'),
            ),

            Text(
              "MALZEMELER:"
                  "1 su bardağı süt,"
                  "1 su bardağı toz şeker,"
                  "1,5 su bardağı un,"
                  "1 paket vanilya,"
                  "1 paket kabartma tozu,"
                  "1 su bardağı sıvı yağ,"
                  "3 yemek kaşığı kakao,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "SOSU İÇİN:"
                  "2 su bardağı süt,"
                  "1 su bardağı toz şeker,"
                  "Yarım çay bardağı sıvı yağ,"
                  "3 yemek kaşığı kakao,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink[700],
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "HAZIRLANIŞI:"
                  "İlk olarak yumurta ve şekeri bir kapta çırpalım."
                  "Daha sonra sıvı yağ, un, kakao, kabartma tozu ve vanilyayı ekleyelim. Biraz daha çırpıp 180 derecede ısıttığımız fırında pişirelim."
                  "Sosun malzemelerini de bir tencerede kaynayana kadar pişirelim."
                  "Sıcak keke sıcak sosu dökelim."
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
