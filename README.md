# FlutterBase

Flutter and Firebase authentication flow.

## Firebase_config

This branch contains the [UI part](https://github.com/cdx-studio/flutterbase/tree/flutterbase_ui) configured with [Firebase](https://console.firebase.google.com/).

## Connect Flutter with Firebase
 
 Steps to connect with [Firebase](https://console.firebase.google.com/):
 
- Create a new project with the Firebase console.
- Add Android apps in the Firebase project settings.
- Use the package (for this project it is `com.example.flutterbase`) and also a SHA-1 certificate fingerprint is also needed for Google sign-in.
- then, download and copy `google-services.json` into `android/app`
- and now a little more configuration is needed, for this [see documentation](https://firebase.google.com/docs/android/setup#add-config-file)

_Note: To know how to connect a Flutter project with the backend service Firebase in details, click [here](https://www.instagram.com/p/CDTe8gEga4j/?utm_source=ig_web_copy_link)  😉_
