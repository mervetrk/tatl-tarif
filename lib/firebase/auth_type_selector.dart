import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:testflutter/firebase/register_page.dart';
import 'package:testflutter/firebase/signin_page.dart';


class AuthTypeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text("Tatlı Tarifler"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/images/Login.jpg'),
          ),
          ),

          Container(
            child: SignInButtonBuilder(
              icon: Icons.person_add,
              backgroundColor: Colors.pink.shade200,
              text: "Kayıt Ol",
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              ),
            ),
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
          ),

          Container(
            child: SignInButtonBuilder(
              icon: Icons.verified_user,
              backgroundColor: Colors.purple.shade600,
              text: "Giriş Yap",
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SignInPage(),
                ),
              ),
            ),
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
