import 'package:flutter/material.dart';

import 'package:testflutter/sayfa1.dart';
class sutlac extends StatefulWidget {
  @override
  _sutlacState createState() => _sutlacState();
}

class _sutlacState extends State<sutlac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Sütlaç Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/sutlac.jpg'),
            ),
            Text(
              "MALZEMELER:"
                  "1 litre süt,"
                  "1 su bardağı soğuk su,"
                  "1 su bardağı toz şeker,"
                  "1 paket vanilya,"
                  "2 çay bardağı pirinç,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
                "HAZIRLANIŞI:"
                    "İlk olarak yıkadığımız pirinçleri 1 su bardağı soğuk su ile haşlıyoruz."
                    "Sütümüzü bir tencereye alıp kaynamasını sağlıyoruz."
                    "Sütümüz kaynayınca haşlanan pirinçleri üzerine ilave ediyoruz.10 dakika kadar kaynatıp şeker ve vanilyayı ekliyoruz."
                    "Afiyet olsun :))",
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


