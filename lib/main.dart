import 'package:flutter/material.dart';
import 'package:app_products/screens/screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'Home',
      routes: {
        'Login': (_) => const LoginScreen(),
        'Home': (_) => const HomeScreen(),
        'Product': (_) => const ProductScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.black,
        ),
        floatingActionButtonTheme: const  FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
          elevation: 0,
        )
      ),
    );
  }
}
