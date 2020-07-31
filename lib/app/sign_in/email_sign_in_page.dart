import 'package:flutter/material.dart';
import 'package:flutterbase/app/sign_in/email_sign_in_form.dart';

class EmailSignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0.0,
          title: Text('Sign in'),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.teal,
                    Colors.purple,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Card(
                child: EmailSignInForm(),
              ),
            ),
          ],
        ));
  }
}
