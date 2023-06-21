import 'package:evcilhayvandefterim/screens/anasayfa.dart';
import 'package:evcilhayvandefterim/screens/create_account.dart';
import 'package:flutter/material.dart';
import 'screens/hatirlatici_sayfasi.dart';
import 'screens/login_pages.dart';
import 'screens/profile_sayfasi.dart';
import 'screens/takvim_sayfasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EVCİL HAYVAN DEFTERİM',
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/hatirlatici': (context) => AlarmPage(),
        '/profil': (context) => ProfilePage(),
        '/takvim': (context) => CalendarPage(),
        '/createAccount': (context) => CreateAccount(),
      },
    );
  }
}
