# auction_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

# Step 1:
## Used Packages:

firebase_core: A Flutter plugin to use the Firebase Core API, which enables connecting to multiple Firebase apps.
firebase_auth: enabling Android and iOS authentication using passwords, phone numbers and identity providers like Google, Facebook and Twitter.  
google_sign_in: a secure authentication system for signing in with a Google account on Android and iOS.  
flutter/material.dart: Flutter SDK library.  

### Challenges:
I faced a error after setting up the firebase with my project the error was -->  Multidex support is required for your android app to build since the number of methods has exceeded 64k. See https://docs.flutter.dev/deployment/android#enabling-multidex-support 

I solved it by adding this 'multiDexEnabled true' to my android/app/build.gradle file inside defaultConfig  


# Step 1:
## Used Packages:

firebase_storage: It allows to interact with Storage using the default Firebase App.
firebase_database: It allows to access data from firebase. I used it to store images a Firestore can't images
image_picker: It is used for picking image from device gallery.