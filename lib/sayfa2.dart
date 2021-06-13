import 'package:flutter/material.dart';
import 'package:testflutter/sayfa3.dart';
import 'package:testflutter/yiyecekler/browni.dart';
import 'package:testflutter/yiyecekler/kek.dart';
import 'package:testflutter/yiyecekler/pasta.dart';
class sayfa2 extends StatefulWidget {
  @override
  _sayfa2State createState() => _sayfa2State();
}

class _sayfa2State extends State<sayfa2> {
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
              child: Image.asset('assets/images/pasta.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> pasta()),
                );
              },
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/kek.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> kek()),
                );
              },
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/browni.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> browni()),
                );
              },
            ),
            RaisedButton(
                child:Text("Sonraki Sayfa"),
                color: Colors.yellow,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa3()),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}