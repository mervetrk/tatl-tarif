import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:testflutter/firebase/signin_page.dart';

 final FirebaseAuth _auth= FirebaseAuth.instance;
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cloud Firestore"),
        actions: [

          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.login),
              onPressed: () async {
               await _auth.signOut();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Başarıyla çıkış yapıldı"),
                ));

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('kişi').snapshots(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),
            );
          }else if (snapshot.hasError){
            return Center(child: Icon(Icons.error, size: 70,
            ),
            );
          }
         final QuerySnapshot querySnapshot = snapshot.data;
          return Container();
          }
          
      )
      );
  }
}
