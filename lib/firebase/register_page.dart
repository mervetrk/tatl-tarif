import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _success = true;
  String _message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kayıt Ol"),
      ),
      body: Form(
        key: _formKey,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "E-Mail"),
                    validator: (String mail) {
                      if (mail.isEmpty) {
                        return "Lütfen bir mail yazın";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: "Şifre"),
                    validator: (String password) {
                      if (password.isEmpty) {
                        return "Lütfen bir şifre yazın";
                      }
                      return null;
                    },
                    obscureText: true,
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    alignment: Alignment.center,
                    child: SignInButtonBuilder(
                      icon: Icons.person_add,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          _register();
                        }
                      },
                      text: "Kayıt ol",
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(_success == null ? '' : _message ?? ''),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register() async {
    try {
      final UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text
      );
      final User user = userCredential.user;
      setState(() {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text("Hoşgeldiniz, ${user.email}")));
      });
    }
  catch(e) {
      print(e.toString());
  }
}
}




