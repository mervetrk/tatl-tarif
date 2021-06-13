import 'package:flutter/material.dart';
import 'package:testflutter/sayfa4.dart';
import 'package:testflutter/yiyecekler/cheesecake.dart';
import 'package:testflutter/yiyecekler/kurabiye.dart';
import 'package:testflutter/yiyecekler/unkurabiye.dart';
class sayfa3 extends StatefulWidget {
  @override
  _sayfa3State createState() => _sayfa3State();
}

class _sayfa3State extends State<sayfa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
        centerTitle: true,
        title: Text("Tatlı Tarifler",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/kurabiye.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> kurabiye()),
                );
              },
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/un-kurabiyesi_2535790_810x458.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> unkurabiye()),
                );
              },
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/cheesecake.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> cheesecake()),
                );
              },
            ),
            RaisedButton(
                child:Text("Sonraki Sayfa"),
                color: Colors.yellow,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa4()),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}