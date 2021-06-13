import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/firebase/auth_type_selector.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tatlı Tarifler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthTypeSelector(),
    );
  }
}