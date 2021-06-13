import 'package:flutter/material.dart';
import 'package:testflutter/pastagrafik.dart';
class hakkinda extends StatefulWidget {
  @override
  _hakkindaState createState() => _hakkindaState();
}

class _hakkindaState extends State<hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade300,
      appBar: AppBar(
        title: Text("Hakkında",
          style: TextStyle(color: Colors.white),),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3004881 kodlu Mobil Programlama dersi kapsamında 173004027 numaralı Merve Türk tarafından 25 Haziran 2021 günü yapılmıştır.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
                child: Text("Grafiği Görmek İçin Çift Tıklayınız.",
                  style: TextStyle(backgroundColor: Colors.pink.shade100,
                  fontSize: 20),
                ),
                onDoubleTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LineChartSample4()),
                  );
                }
            ),
          ]),
    );
  }
}
