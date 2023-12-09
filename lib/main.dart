import 'package:flutter/material.dart';
import 'package:wellnease/register/doctor_sign%20up.dart';
import 'package:wellnease/register/join.dart';
import 'package:wellnease/register/sign%20in.dart';
import 'package:wellnease/register/user_sign%20up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: JoinScreen.routeName,
      routes: {
        JoinScreen.routeName: (context) => JoinScreen(),
        UserSignUpScreen.routeName: (context) => UserSignUpScreen(),
        DoctorSignUp.routeName: (context) => DoctorSignUp(),
        SignIn.routeName: (context) => SignIn()
      },
    );
  }
}
