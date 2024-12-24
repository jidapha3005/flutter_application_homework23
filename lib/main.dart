import 'package:flutter/material.dart';
import 'package:flutter_application_homework/friend_detail.dart';
import 'package:flutter_application_homework/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Friend List App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/ptd_dt': (context) => const FriendDetail()
      },
    );
  }
}