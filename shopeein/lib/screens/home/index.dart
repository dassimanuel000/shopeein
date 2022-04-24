// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_new, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/home/apphome.dart';
import 'package:shopeein/screens/home/navBarItems.dart';
import 'package:shopeein/widgets/app_widget.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: appIndex(context),
      drawer: drawerHome(context),
      body:
          ListView(scrollDirection: Axis.vertical, shrinkWrap: true, children: [
        SizedBox(
          height: 100.0,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: ScrollPhysics(),
              child: Row(
                children: [
                  roundCat(() {
                    print('object');
                  }, "Men"),
                  roundCat(() {
                    print('object');
                  }, "Women"),
                  roundCat(() {
                    print('object');
                  }, "Kids"),
                  roundCat(() {
                    print('object');
                  }, "Fashion"),
                  roundCat(() {
                    print('object');
                  }, "Winter"),
                ],
              )),
        ),
        Container(
          height: context.width() * 0.8,
          margin: const EdgeInsets.only(bottom: 5),
          child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 1000)),
                    ))
                .toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Image.network(
                "https://i.ibb.co/CVGz3QS/listHome.png",
              )),
        ),
        headText("Deal of the Day"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(children: [
            productCarousel(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCarousel(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCarousel(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCarousel(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
          ]),
        ),
        headText("Trending Collections"),
        Row(
          children: [
            trendingCard("Trendy Collections",
                "https://github.com/dassimanuel000/shopeein/blob/pdf/trend1.png?raw=true"),
            trendingCard("Trendy Collections",
                "https://github.com/dassimanuel000/shopeein/blob/pdf/trend2.png?raw=true"),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            trendingCard("Trendy Collections",
                "https://github.com/dassimanuel000/shopeein/blob/pdf/trend2.png?raw=true"),
            trendingCard("Trendy Collections",
                "https://github.com/dassimanuel000/shopeein/blob/pdf/trend1.png?raw=true"),
          ],
        ),
        headText("New Arrivals"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(children: [
            productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
          ]),
        ),
        headText("Hots selling products"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(children: [
            productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
            productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
          ]),
        ),
      ]),
    );
  }

  AppBar appIndex(BuildContext context) {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(
              Icons.sort_rounded,
              color: Colors.white,
              size: 16.0,
            ),
          ),
          Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: const Image(
              height: 50.0,
              image: NetworkImage('https://i.ibb.co/SQvqyjF/index.png'),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        InkWell(
          child: Icon(
            Icons.search_sharp,
            color: Colors.white,
            size: 16.0,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 10.0),
        InkWell(
          child: Icon(
            Icons.dashboard_customize_outlined,
            color: Colors.white,
            size: 16.0,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 10.0),
        InkWell(
          child: Icon(
            Icons.notification_add_outlined,
            color: Colors.white,
            size: 16.0,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 10.0),
        InkWell(
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 16.0,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  Widget roundCat(Function callCat, String type) {
    return InkWell(
      onTap: () {
        callCat;
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://i.ibb.co/xsKrrcG/people.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              type,
              style: kbordStyle,
            )
          ],
        ),
      ),
    );
  }

  Widget productCarousel(Function callCat, String img) {
    return InkWell(
      onTap: () {
        callCat;
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.network(
          img,
          width: 120.0,
          height: 200.0,
        ),
      ),
    );
  }

  Widget headText(String title) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              title,
              style: kbordStyle,
            ),
          ),
          Container(
            decoration: boxDecoration(bgColor: mPrimaryColor, radius: 2.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "View All",
                style: TextStyle(color: mBackgroundColor, fontSize: 12.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget trendingCard(String title, String image) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
              width: 150.0,
              height: 200.0,
            ),
            Text(
              title,
              style: kbordStyle,
            ),
            new RichText(
              textAlign: TextAlign.center,
              text: new TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: 'Trendy Collections',
                    style: new TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    '\$74 % off ',
                    style: new TextStyle(
                      fontSize: 12.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget productCard(Function callCat, String img) {
    return InkWell(
      onTap: () {
        callCat;
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.network(
              img,
              width: 150.0,
              height: 200.0,
            ),
            Text(
              "New Fashion ",
              style: kbordStyle,
            ),
            new RichText(
              textAlign: TextAlign.center,
              text: new TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: 'From \$900.99',
                    style: new TextStyle(
                      fontSize: 9.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            new RichText(
              textAlign: TextAlign.center,
              text: new TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: 'Min 40% OFF ',
                    style: new TextStyle(
                      fontSize: 9.0,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
