// ignore_for_file: curly_braces_in_flow_control_structures, unnecessary_new

import 'dart:convert';

import 'package:flutter/material.dart';
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
    var url = 'https://trouver-un-candidat.com/test/new.php';
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
                                            child: Column(
                                              children: [
                                                Text(
                                                  "${list[index]['_title']}",
                                                  style: const TextStyle(
                                                      fontSize: 14.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
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
                                                      color: successColor,
                                                    ),
                                                    child: Text(
                                                      'Read More',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall!
                                                          .copyWith(
                                                            color:
                                                                mBackgroundColor,
                                                          ),
                                                    ),
                                                  )
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
