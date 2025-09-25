import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/pages/email_sign_inPage.dart';
import 'package:ui_design/pages/profile_page.dart';
import 'package:ui_design/pages/signIn_to_DD.dart';
import 'package:ui_design/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: WelcomePage.path,
      routes: {WelcomePage.path: (context) => WelcomePage(),
      SignInToDD.path:(context)=>SignInToDD(),
      EmailSignInPage.path:(context)=> EmailSignInPage(),
      ProfilePage.path:(context)=> ProfilePage()
      },
    );
  }
}
