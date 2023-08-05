//외부라이브러리
import 'package:flutter/material.dart';
import 'package:marcket1/screens/home/home_screen.dart';
//내부임포트
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        ),
        home: Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }
}
