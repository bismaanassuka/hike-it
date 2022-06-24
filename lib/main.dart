import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hiking_app/dashboard.dart';
import 'package:hiking_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Nunito'),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SecondScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Splash_bg.png",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: getHeight(150),
                  ),
                  SimpleShadow(
                    child: SvgPicture.asset("assets/images/Vertical_logo.svg"),
                  ),
                  SizedBox(
                    height: getHeight(40),
                  ),
                  const Text(
                    "Aplikasi Pendakian dan Perkemahan\nLumajang-Jember",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.5,
                      letterSpacing: 1,
                      fontWeight: normal,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Versi 1.0",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: normal,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(30),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Dashboard();
  }
}
