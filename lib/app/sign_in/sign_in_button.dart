import 'package:flutter/material.dart';
import 'package:flutterbase/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    @required String text,
    IconData icon,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          child: icon == null
              ? Text(
                  text,
                  style: TextStyle(
                    fontSize: 17.0,
                    color: textColor,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      icon,
                      color: textColor,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 17.0,
                        color: textColor,
                      ),
                    ),
                    Opacity(
                      opacity: 0,
                      child: Icon(
                        icon,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
          color: color,
          onPressed: onPressed,
        );
}
