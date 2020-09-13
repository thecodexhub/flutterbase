import 'package:flutter/material.dart';
import 'package:flutterbase/app/services/auth.dart';
import 'package:flutterbase/common_widgets/form_submit_button.dart';
import 'package:provider/provider.dart';

class PhoneSignInPage extends StatefulWidget {
  @override
  _PhoneSignInPageState createState() => _PhoneSignInPageState();
}

class _PhoneSignInPageState extends State<PhoneSignInPage> {
  TextEditingController _phoneController = TextEditingController(text: '+91');
  TextEditingController _otpController = TextEditingController();

  void _submit() async {
    final auth = Provider.of<AuthBase>(context);
    await auth.verifyPhoneNumber(
      _phoneController.text.trim(),
      getVerificationId: (String verificationId) {
        _buildDialogForOTP(verificationId);
      },
    );
  }

  List<Widget> _buildChildren() {
    return [
      TextField(
        controller: _phoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Enter mobile number',
        ),
      ),
      SizedBox(height: 16.0),
      FormSubmitButton(
        text: 'Send OTP',
        onPressed: _submit,
      ),
    ];
  }

  _buildDialogForOTP(String verificationId) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return AlertDialog(
            title: Text('OTP verification'),
            content: TextField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter OTP',
              ),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('CANCEL'),
              ),
              FlatButton(
                onPressed: () async {
                  final auth = Provider.of<AuthBase>(context);
                  await auth.signInWithPhoneAndOTP(
                      verificationId, _otpController.text.trim());
                  Navigator.of(context).pop();

                  Navigator.of(context).pop();
                },
                child: Text('SUBMIT'),
              ),
            ],
          );
        });
  }

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
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: _buildChildren(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
