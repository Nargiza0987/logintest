import 'package:flutter/material.dart';
import 'package:logintest/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 75, 69, 240)),
        //useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
