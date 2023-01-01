import 'package:device_preview/device_preview.dart';
import 'package:e_commerce/views/l/detail_view/detail_view.dart';
import 'package:e_commerce/views/l/house_detail_view/house2_detail_view.dart';
import 'package:e_commerce/views/l/house_detail_view/house_detail_view.dart';
import 'package:e_commerce/views/l/login_view/login_view.dart';
import 'package:e_commerce/views/l/profile_view/profile_view.dart';
import 'package:e_commerce/views/l/sign_in/start_page.dart';
import 'package:e_commerce/views/l/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
    enabled: true,
    tools: const [...DevicePreview.defaultTools],
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      // home: const StartPage(),
      // home: const LoginView(),
      // home: const ProfileView(),
      // home: const DetailView(),
      // home: const HouseDetailView2(),
    );
  }
}
