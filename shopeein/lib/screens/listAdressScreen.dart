// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';

class ListAdressScreen extends StatefulWidget {
  const ListAdressScreen({Key? key}) : super(key: key);

  @override
  _ListAdressScreenState createState() => _ListAdressScreenState();
}

class _ListAdressScreenState extends State<ListAdressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mBackgroundColor,
        appBar: appBarTitle(context, "Add address"),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 1.0, right: 15.0),
                child: Text(
                  "Add Address +",
                  style: TextStyle(color: mButtonFacebookColor),
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  bgColor: iconColorSecondary,
                  color: iconColorSecondary,
                ),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.search,
                          color: appTextColorSecondary,
                          size: 22,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Find an Address...',
                            border: InputBorder.none,
                            isDense: true,
                            hintStyle: TextStyle(color: appTextColorSecondary),
                            contentPadding: EdgeInsets.all(0),
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          onSubmitted: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: new View(),
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  decoration: boxDecoration(
                    bgColor: iconColorSecondary,
                    color: iconColorSecondary,
                  ),
                  child: ExpansionTile(
                    leading: CircleAvatar(
                      child: Image.network("https://i.ibb.co/Z2YNt0b/home.png"),
                      backgroundColor: mBackgroundColor,
                    ),
                    title: Text("Home"),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              //                   <--- left side
                              color: appTextColorSecondary,
                              width: 1.0,
                            ),
                            top: BorderSide(
                              //                    <--- top side
                              color: appTextColorSecondary,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1.0),
                              child: Text(
                                "PETER",
                                style: kbordStyle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Théâtre de Ménilmontant, 15 rue du Retrait, 75020 Paris",
                                    style: kSubtitleStyle,
                                  ),
                                  Text(
                                    "750001",
                                    style: kSubtitleStyle,
                                  ),
                                  Text(
                                    "+91-9999****99",
                                    style: kSubtitleStyle,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.restore_from_trash,
                                        color: appTextColorSecondary,
                                        size: 22,
                                      ),
                                      onPressed: () {}),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1.0),
                                    child: Text(
                                      "Remove",
                                      style: TextStyle(color: mPrimaryColor),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.edit,
                                        color: appTextColorSecondary,
                                        size: 22,
                                      ),
                                      onPressed: () {}),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1.0),
                                    child: Text(
                                      "Edit  ",
                                      style: TextStyle(
                                          color: mButtonFacebookColor),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                    trailing: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              return mButtonEmailColor; // Use the component's default.
                            },
                          ),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                            Colors.white; // Defer to the widget's default.
                          }),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Defaut',
                          style: TextStyle(color: mBackgroundColor),
                        )),
                  ))),
        ]));
  }
}

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: <Widget>[
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ExpansionTile(
                  leading: CircleAvatar(
                    child: Image.network("https://i.ibb.co/Z2YNt0b/home.png"),
                    backgroundColor: mBackgroundColor,
                  ),
                  title: Text("Home"),
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Text(
                              "Per ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ze"),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                  trailing: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            return Colors.green; // Use the component's default.
                          },
                        ),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          Colors.white; // Defer to the widget's default.
                        }),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Postulez',
                        style: TextStyle(color: mBackgroundColor),
                      )),
                );
              })
        ]));
  }
}
