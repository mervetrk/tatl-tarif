import 'package:flutter/material.dart';
import 'package:testflutter/sayfa3.dart';

class cheesecake extends StatefulWidget {
  @override
  _cheesecakeState createState() => _cheesecakeState();
}

class _cheesecakeState extends State<cheesecake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("Cheesecake Tarifi",
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/cheesecake.jpg'),
            ),

            Text(
              "KREMA MALZEMELERİ:"
                  "500 gram labne peyniri ,"
                  "1 paket krema,"
                  "1,5 su bardağı toz şeker,"
                  "4 yemek kaşığı un,"
                  "1 paket vanilya,"
                  "4 yumurta ve 1 yumurta sarısı,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "TABANI İÇİN:"
                  "2 paket bisküvi,"
                  "100 gram tereyağı,"
                  "1 su bardağı çekilmiş fındık içi,"
                  "Yarım çay bardağı süt,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink[700],
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "SOSU İÇİN:"
                  "250 gram frambuaz,"
                  "5 yemek kaşığı toz şeker,"
                  "2 yemek kaşığı nişasta,"
                  "1 su bardağı su,"
                  "1 paket vanilya,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.pink[900],
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "HAZIRLANIŞI:"
                  "Tabanı için bisküvi ve fındıkları robottan çekiyoruz.Daha sonra margarin ve sütü ekleyip tabanı hazırlıyoruz."
                  "Sosu için bütün malzemeleri ocakta pişiriyoruz."
                  "Kremayıda aynı şekilde hazırlıyoruz.Tabanın üzerine döküp 200 derece fırında 10 dakika pişiriyoruz."
                  "Soğuduktan sonra sosunu döküyoruz."
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
