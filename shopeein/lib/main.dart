// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/Home.dart';
import 'package:shopeein/screens/adressScreen.dart';
import 'package:shopeein/screens/home/productDetail.dart';
import 'package:shopeein/screens/login2screen.dart';
import 'package:shopeein/screens/optScreen.dart';
import 'package:shopeein/screens/splash.dart';
import 'package:shopeein/widgets/buttonHome.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedButton(
              img: Icons.admin_panel_settings_sharp,
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              },
              text: ' Login ',
              backgroundColor: mPrimaryColor,
              textColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedButton(
              img: Icons.search_off_rounded,
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreens()));
              },
              text: ' page 2 ',
              backgroundColor: mPrimaryColor,
              textColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedButton(
              img: Icons.search_off_rounded,
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AdressScreen()));
              },
              text: ' Adress Screen ',
              backgroundColor: mPrimaryColor,
              textColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedButton(
              img: Icons.home,
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
              text: ' Home Screen ',
              backgroundColor: mPrimaryColor,
              textColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedButton(
              img: Icons.home,
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => OptScreen()));
              },
              text: ' Opt Screen  ',
              backgroundColor: mPrimaryColor,
              textColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedButton(
              img: Icons.home,
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              },
              text: ' Detail Product Screen  ',
              backgroundColor: mPrimaryColor,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
