// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/AddAdressScreen.dart';
import 'package:shopeein/widgets/appBar_close.dart';

class AdressScreen extends StatefulWidget {
  const AdressScreen({Key? key}) : super(key: key);

  @override
  _AdressScreenState createState() => _AdressScreenState();
}

class _AdressScreenState extends State<AdressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      appBar: appBarTitle(context, "Add address"),
      body: ListView(
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                height: MediaQuery.of(context).size.width * 0.5,
                child: Image.network(
                  "https://i.ibb.co/rwGCG5x/ssdze.png",
                  height: 200.0,
                  width: 200.0,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Text(
              "Save Your Shipping Adress For Anything at Any Time",
              style: kSubtitleStyle,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddAdressScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Text(
                "Add Address +",
                style: TextStyle(color: mButtonFacebookColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
