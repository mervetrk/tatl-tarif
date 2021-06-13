import 'package:flutter/material.dart';
import 'package:testflutter/sayfa2.dart';
import 'package:testflutter/yiyecekler/muhalleb%C4%B1.dart';
import 'package:testflutter/yiyecekler/pud%C4%B1ng.dart';
import 'package:testflutter/yiyecekler/sutlac.dart';
class sayfa1 extends StatefulWidget {
  @override
  _sayfa1State createState() => _sayfa1State();
}

class _sayfa1State extends State<sayfa1> {
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
              child: Image.asset('assets/images/sutlac.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> sutlac()),
                );
              },
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/puding.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> puding()),
                );
              },
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/muhallebi.jpg'),
            ),
            ),
            RaisedButton(
              child: Text('Tarifi Gör'),
              color: Colors.amber[200],
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> muhalebi()),
                );
              },
            ),
            RaisedButton(
                child:Text("Sonraki Sayfa"),
                color: Colors.yellow,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa2()),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}