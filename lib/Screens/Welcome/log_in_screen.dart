import 'package:flutter/material.dart';
import 'package:learning_flutter/Components/log_in_form.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../Components/button.dart';

class LogIn extends StatefulWidget {
  LogIn({ Key? key }) : super(key: key);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('LEARNING FLUTTER'),
      centerTitle: true,
      elevation: 2.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              "Log In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            const LogInForm(),
            Button(
              text: "Log In with Google", press: () {}
              // press: () async{
              //      signInWithGoogle(model)
              //             .then((FirebaseUser user){
              //           model.clearAllModels();
              //           Navigator.of(context).pushNamedAndRemoveUntil
              //             (RouteName.Home, (Route<dynamic> route) => false
              //           );}
              //           ).catchError((e) => print(e));
              //         },
              ),
            Button(text: "Log In with Facebook", press: () {}),
          ],
        ),
      ),
    );
  }
}