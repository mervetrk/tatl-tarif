import 'package:flutter/material.dart';
import 'package:testflutter/hakk%C4%B1nda.dart';
import 'package:testflutter/yiyecekler/baklava.dart';
import 'package:testflutter/yiyecekler/kadayif.dart';
class sayfa4 extends StatefulWidget {
  @override
  _sayfa4State createState() => _sayfa4State();
}

class _sayfa4State extends State<sayfa4> {
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
              child: Image.asset('assets/images/baklava.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> baklava()),
                );
              },
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/kadayıf.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>kadayif()),
                );
              },
            ),
            GestureDetector(
                child: Text("HAKKINDA",
                  style: TextStyle(backgroundColor: Colors.deepOrangeAccent),
                ),
                onDoubleTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => hakkinda()),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
