import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/screens/screen_detail.dart';
import 'package:flutter_shopping_mall/screens/screen_index.dart';
import 'package:flutter_shopping_mall/screens/screen_login.dart';
import 'package:flutter_shopping_mall/screens/screen_register.dart';
import 'package:flutter_shopping_mall/screens/screen_search.dart';
import 'package:flutter_shopping_mall/screens/screen_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //shared preferences 초기화
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shopping mall',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/index': (context) => const IndexScreen(),
        '/register': (context) => const RegisterScreen(),
        '/search': (context) => const SearchScreen(),
        '/detail': (context) => const DetailScreen(),
      },
      initialRoute: '/',
    );
  }
}
