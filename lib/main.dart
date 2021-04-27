import 'package:flutter/material.dart';
import 'screens/Welcome/welcome_screen.dart';
import 'screens/Login/login_screen.dart';
import 'screens/Signup/signup_screen.dart';
import 'screens/Menu/menu_screen.dart';
import 'screens/NewEquipamentForm/form_equipament_screen.dart';
import 'utilities/constants.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Name',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => SignUpScreen(),
        '/menu': (context) => MenuScreen(),
        '/newEquipament': (context) => FormEquipament(),
      },
    );
  }
}
