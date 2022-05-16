import 'package:flutter_php_auth/navigation.dart';
import 'package:flutter_php_auth/screens/home.dart';
import 'package:flutter_php_auth/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş Ekranı',
      home: GetStorage().read("userId") != null
          ? NavigationScreen()
          : LoginScreen(),
    );
  }
}
