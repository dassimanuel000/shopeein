// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/listAdressScreen.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';
import 'package:shopeein/widgets/buttonHome.dart';

class AddAdressScreen extends StatefulWidget {
  const AddAdressScreen({Key? key}) : super(key: key);

  @override
  _AddAdressScreenState createState() => _AddAdressScreenState();
}

class _AddAdressScreenState extends State<AddAdressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      appBar: appBarTitle(context, "Add address"),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Contact info', style: kbordStyle),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'Name ',
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'Phone Number ',
                ),
              )),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Address info', style: kbordStyle),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Choose Location ', style: kbordStyle),
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Container(
                child: Image.network(
                  "https://i.ibb.co/12VP4hY/836.png",
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: boxDecoration(radius: 0, showShadow: true),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: mPrimaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add_location_alt_outlined,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Use My Current Location',
                              style: kbordStyle),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          'Théâtre de Ménilmontant, 15 rue du Retrait, 75020 Paris',
                          style: kSubtitleStyle),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'Flat no ',
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'Locality / area / street',
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'LandMark',
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'State',
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Address type', style: kbordStyle),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RoundedButton(
              img: Icons.send_and_archive_rounded,
              press: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ListAdressScreen()));
              },
              text: ' Save ',
              backgroundColor: mPrimaryColor,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
