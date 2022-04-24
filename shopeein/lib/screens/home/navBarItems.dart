// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls, prefer_collection_literals, deprecated_member_use, non_constant_identifier_names, unused_field, dead_code, avoid_unnecessary_containers, unnecessary_this

import 'dart:math';

import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/home/categorie.dart';
import 'package:shopeein/screens/home/delivery.dart';
import 'package:shopeein/screens/home/fanclub.dart';
import 'package:shopeein/screens/home/index.dart';
import 'package:shopeein/screens/home/whishlist.dart';

class Full extends StatefulWidget {
  const Full({Key? key}) : super(key: key);

  @override
  _FullState createState() => _FullState();
}

class _FullState extends State<Full> with SingleTickerProviderStateMixin {
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
    int _page = 0;

    final Index _Index = Index();
    final Fanclub _Fanclub = Fanclub();
    final Categorie _Categorie = Categorie();
    final Whishlist _Whishlist = Whishlist();
    final Delivery _Delivery = Delivery();

    Widget _showPage = Index();

//  BuildContext get contexte => Container();

    Widget _pageChoose(int page) {
      switch (page) {
        case 0:
          return _Index;
          break;
        case 1:
          return _Fanclub;
          break;
        case 2:
          return _Categorie;
          break;
        case 4:
          return _Whishlist;
          break;
        case 5:
          return _Delivery;
          break;
        default:
          return Container(
              child: Center(
            child: Text('cliquez sur une icone en bas'),
          ));
      }
    }

    return Scaffold(
      body: Container(
        child: _showPage,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                  text: "Home",
                  icon: Icons.shopping_bag_outlined,
                  selected: false,
                  onPressed: () {
                    setState(() {
                      _showPage = _pageChoose(_page);
                    });
                  },
                ),
                IconBottomBar(
                    text: "Fan Club",
                    icon: Icons.grain_outlined,
                    selected: false,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Fanclub()));
                    }),
                IconBottomBar2(
                    text: "Categories",
                    icon: Icons.calendar_view_month_rounded,
                    selected: false,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Categorie()));
                    }),
                IconBottomBar(
                    text: "Whishlist",
                    icon: Icons.favorite_border,
                    selected: false,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Whishlist()));
                    }),
                IconBottomBar(
                    text: "4Hr Delivery",
                    icon: Icons.bus_alert_sharp,
                    selected: false,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Delivery()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
class BottomNavBarFb1 extends StatelessWidget {
  const BottomNavBarFb1({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);
r;

  @override
  void initState() {
    super.initState();
    
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

}
*/
class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 20,
            color: selected ? mPrimaryColor : iconColorSecondary,
          ),
        ),
        Text(
          text,
          style: kmininStyle,
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: selected ? mPrimaryColor : appTextColorSecondary,
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          text,
          style: kmininStyle,
        ),
      ],
    );
  }
}


/*
class FlasHome extends StatefulWidget {
  const FlasHome({Key? key}) : super(key: key);

  @override
  _FlasHomeState createState() => _FlasHomeState();
}

class _FlasHomeState extends State<FlasHome> {
  int _page = 0;

  Widget _showPage = Index();

  final Index _Index = Index();
  final Fanclub _Fanclub = Fanclub();
  final Categorie _Categorie = Categorie();
  final Whishlist _Whishlist = Whishlist();
  final Delivery _Delivery = Delivery();

  Widget _pageChoose(int page) {
    switch (page) {
      case 0:
        return _Index;
        break;
      case 1:
        return _Fanclub;
        break;
      case 2:
        return _Categorie;
        break;
      case 4:
        return _Whishlist;
        break;
      case 5:
        return _Delivery;
        break;
      default:
        return Container(
            child: Center(
          child: Text('cliquez sur une icone en bas'),
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Curved Navigation Bar"),
        ),
        body: Container(),
        bottomNavigationBar: MoltenBottomNavigationBar(
          selectedIndex: _page,
          onTabChange: (clickedIndex) {
            setState(() {
              _showPage = _pageChoose(clickedIndex);
            });
          },
          tabs: [
            MoltenTab(icon: Icon(Icons.home)),
            MoltenTab(icon: Icon(Icons.search)),
            MoltenTab(icon: Icon(Icons.save)),
            MoltenTab(icon: Icon(Icons.settings)),
            MoltenTab(icon: Icon(Icons.history))
          ],
        ),
      ),
    );
  }
}*/
/*
class TabBarAnimation extends StatefulWidget {
  const TabBarAnimation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BubblesState();
  }
}

//class _BubblesState extends State<TabBarAnimation> with SingleTickerProviderStateMixin{
class _BubblesState extends State<TabBarAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late List<Bubble> bubbles;
  final int numberOfBubbles = 400;
  final Color color = Color(0xDD01549F);
  final double maxBubbleSize = 12.0;
  int _page = 0;

  final Index _Index = Index();
  final Fanclub _Fanclub = Fanclub();
  final Categorie _Categorie = Categorie();
  final Whishlist _Whishlist = Whishlist();
  final Delivery _Delivery = Delivery();

  Widget _showPage = Index();

//  BuildContext get contexte => Container();

  Widget _pageChoose(int page) {
    switch (page) {
      case 0:
        return _Index;
        break;
      case 1:
        return _Fanclub;
        break;
      case 2:
        return _Categorie;
        break;
      case 4:
        return _Whishlist;
        break;
      case 5:
        return _Delivery;
        break;
      default:
        return Container(
            child: Center(
          child: Text('cliquez sur une icone en bas'),
        ));
    }
  }

  //TabController tabController;

  @override
  void initState() {
    super.initState();
    /////////////////
    //tabController = TabController(vsync: this, length: 4);
    /////////////////
    bubbles = [];
    int i = numberOfBubbles;
    while (i > 0) {
      //bubbles.add(Bubble(color, maxBubbleSize, contexte));
      bubbles.add(Bubble(color, maxBubbleSize));
      i--;
    }

    _controller = AnimationController(
        duration: const Duration(seconds: 1500), vsync: this);
    _controller.addListener(() {
      updateBubblePosition();
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        //initialIndex: _page,
        items: <Widget>[
          Column(
            children: [
              Icon(Icons.shopping_bag_outlined,
                  size: 15, color: mBackgroundColor),
              Text(
                "Home",
                style: kSubtitleStyle,
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.people_outline_sharp,
                  size: 15, color: mBackgroundColor),
              Text(
                "Fan Club",
                style: kSubtitleStyle,
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.calendar_view_month_rounded,
                  size: 15, color: mBackgroundColor),
              Text(
                "Categories",
                style: kSubtitleStyle,
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.favorite_border_sharp,
                  size: 15, color: mBackgroundColor),
              Text(
                "Whishlist",
                style: kSubtitleStyle,
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.bus_alert_sharp, size: 15, color: mBackgroundColor),
              Text(
                "4Hr Delivery",
                style: kSubtitleStyle,
              )
            ],
          ),
        ],
        color: mBackgroundColor,
        buttonBackgroundColor: mPrimaryColor,
        backgroundColor: mPrimaryColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _showPage = _pageChoose(index);
          });
        },
      ),
      body: Container(
        child: _showPage,
      ),
    );
  }

  void updateBubblePosition() {
    bubbles.forEach((it) => it.updatePosition());
    setState(() {});
  }
}

class BubblePainter extends CustomPainter {
  List<Bubble> bubbles;
  AnimationController controller;

  BubblePainter({required this.bubbles, required this.controller});

  @override
  void paint(Canvas canvas, Size canvasSize) {
    bubbles.forEach((it) => it.draw(canvas, canvasSize));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Bubble {
  late Color colour;
  late double direction;
  late double speed;
  late double radius;
  late double x;
  late double y;
  //double test = 0.4903209748234223;
  //final appStyleMode = Provider.of<AppStyleModeNotifier>(context);

  //Bubble(Color colour, double maxBubbleSize, BuildContext context) {

  Bubble(Color colour, double maxBubbleSize) {
    //var contexte = context;
    //final appStyleMode = Provider.of<AppStyleModeNotifier>(context);
    this.colour = Colors.white;
    this.direction = Random().nextDouble() * 360;
    this.speed = 1;
    this.radius = Random().nextDouble() * maxBubbleSize;
  }

  //static BuildContext get context => null;

  draw(Canvas canvas, Size canvasSize) {
    Paint paint = Paint()
      ..color = colour
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    assignRandomPositionIfUninitialized(canvasSize);

    randomlyChangeDirectionIfEdgeReached(canvasSize);

    canvas.drawCircle(Offset(x, y), radius, paint);
  }

  void assignRandomPositionIfUninitialized(Size canvasSize) {
    if (x == null) {
      this.x = Random().nextDouble() * canvasSize.width;
    }

    if (y == null) {
      this.x = Random().nextDouble() * canvasSize.height;
    }
  }

  updatePosition() {
    var a = 180 - (direction + 90);
    direction > 0 && direction < 100
        ? x += speed * sin(direction) / sin(speed)
        : x -= speed * sin(direction) / sin(speed);
    direction > 90 && direction < 270
        ? y += speed * sin(a) / sin(speed)
        : y -= speed * sin(a) / sin(speed);
  }

  randomlyChangeDirectionIfEdgeReached(Size canvasSize) {
    if (x > canvasSize.width || x < 0 || y > canvasSize.height || y < 0) {
      direction = Random().nextDouble() * 360;
    }
  }
}
*/
/*

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shopeein/constant/color.dart';

//factcheck,rule
List<PersistentBottomNavBarItem> navBarItems = [
  PersistentBottomNavBarItem(
    icon: Icon(
      Icons.shopping_bag_outlined,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    title: ("Home"),
    textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12.0),
    activeColorPrimary: mPrimaryColor,
    activeColorSecondary: mPrimaryColor,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(
      Icons.people_outline_sharp,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    title: ("Fan Club"),
    textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12.0),
    activeColorPrimary: mPrimaryColor,
    activeColorSecondary: mPrimaryColor,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
  PersistentBottomNavBarItem(
    icon: Container(
      height: 25.0,
      width: 25.0,
      decoration: BoxDecoration(
        color: appTextColorSecondary,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.calendar_view_month_rounded,
        color: Colors.white,
        size: 12.0,
      ),
    ),
    title: ("Categories"),
    textStyle: TextStyle(
        fontFamily: 'Roboto', fontSize: 12.0, color: appTextColorSecondary),
    activeColorPrimary: mBackgroundColor,
    activeColorSecondary: appTextColorSecondary,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(
      Icons.favorite_border_sharp,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    title: ("Whishlist"),
    textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12.0),
    activeColorPrimary: mPrimaryColor,
    activeColorSecondary: mPrimaryColor,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(
      Icons.bus_alert_outlined,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    iconSize: 12.0,
    title: ("4Hr Delivery"),
    textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12.0),
    activeColorPrimary: mPrimaryColor,
    activeColorSecondary: mPrimaryColor,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
];
*/