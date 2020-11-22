import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutterbase/app/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomePage extends StatelessWidget {
  Future<void> _signOut(BuildContext context) async {
    final auth = Provider.of<AuthBase>(context);
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          FlatButton(
            child: Text(
              'Log out',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: () => _signOut(context),
          ),
        ],
      ),
      body: Container(),
    );
  }
}

