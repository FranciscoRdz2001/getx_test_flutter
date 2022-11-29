import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/pages/home_page.dart';
import 'package:getx_test/pages/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testing GetX',
      home: const HomePage(),
      initialRoute: '/homePage',
      getPages: [
        GetPage(name: '/homePage', page: () => const HomePage()),
        GetPage(name: '/secondPage', page: () => const SecondPage()),
      ],
    );
  }
}
