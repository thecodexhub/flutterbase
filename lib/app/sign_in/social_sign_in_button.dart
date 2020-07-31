import 'package:flutter/material.dart';
import 'package:flutterbase/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String imageUrl,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(imageUrl),
              Text(
                text,
                style: TextStyle(
                  fontSize: 17.0,
                  color: textColor,
                ),
              ),
              Opacity(
                opacity: 0,
                child: Image.asset(imageUrl),
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
