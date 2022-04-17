// ignore_for_file: curly_braces_in_flow_control_structures, unnecessary_new, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:http/http.dart' as http;

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      appBar: appBarTitle(context, "My ordres"),
      body: ListView(
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                height: MediaQuery.of(context).size.width * 1.5,
                child: new News(),
              )),
        ],
      ),
    );
  }
}

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  Future getData() async {
    var url =
        'https://raw.githubusercontent.com/dassimanuel000/shopeein/init/new.json';
    var response = await http.get(Uri.parse(url));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["news"];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        return snapshot.hasData
            ? SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(children: <Widget>[
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        List list = snapshot.data;
                        return GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Container(
                                color: Colors.transparent,
                                height: 80,
                                width: MediaQuery.of(context).size.width - 32,
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Container(
                                      width: 88,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Image.network(
                                        '${list[index]['img']}',
                                        fit: BoxFit.cover,
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          if (loadingProgress == null)
                                            return child;

                                          return const CircularProgressIndicator();
                                          // You can use LinearProgressIndicator or CircularProgressIndicator instead
                                        },
                                        errorBuilder: (context, error,
                                                stackTrace) =>
                                            new Image.network(
                                                "https://i.ibb.co/QP8jHZ7/ic-launcher.png"),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SingleChildScrollView(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: context.width() / 3,
                                                  child: Text(
                                                    "${list[index]['_title']}",
                                                    style: const TextStyle(
                                                        fontSize: 14.0),
                                                  ),
                                                ),
                                                Icon(
                                                    Icons
                                                        .arrow_forward_ios_outlined,
                                                    size: 15.0,
                                                    color:
                                                        appTextColorSecondary),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "${list[index]['date']}",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                            style:
                                                const TextStyle(fontSize: 8.0),
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  136,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 18,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 13,
                                                      vertical: 3,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                      color: mBackgroundColor,
                                                    ),
                                                    child: Text(
                                                      '\$ 5420.00',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall!
                                                          .copyWith(
                                                            color:
                                                                iconColorSecondary,
                                                          ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Status : Pending",
                                                    style: kbordStyle,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ));
                      })
                ]))
            : const CircularProgressIndicator();
      },
    );
  }
}
