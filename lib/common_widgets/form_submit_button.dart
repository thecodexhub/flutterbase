import 'package:flutter/material.dart';
import 'package:flutterbase/common_widgets/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton {
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          height: 44.0,
          color: Colors.teal,
          borderRadius: 4.0,
          onPressed: onPressed,
        );
}
