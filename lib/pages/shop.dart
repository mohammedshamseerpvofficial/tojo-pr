import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dotted_border/dotted_border.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration:
                    BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
                child: Text(
                  'S',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'HOP',
                style: TextStyle(color: Colors.black),
              ),
              Container(
                decoration:
                    BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.green,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_alt_outlined,
                color: Colors.green,
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.green,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Image.asset(
                'images/food.png',
                color: Colors.green,
                height: 120,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 51),
              child: Container(
                child: Text(
                  'Eating right begins with shopping right. Nutri Family will help you select the best foods for your family\'s health',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                initialIndex: 0,
                length: 6,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    toolbarHeight: 0,
                    // backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    bottom: TabBar(
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      unselectedLabelStyle: TextStyle(color: Colors.grey) ,
                      enableFeedback: true,
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      
                      indicatorWeight: 4,
                       indicatorPadding: EdgeInsets.only(left: 12,right: 12),
                      isScrollable: true,
                      indicator: CustomTabIndicator(),
                      
                      tabs: <Widget>[
                        Tab(
                          text: "  Recommended  ",
                        ),
                        Tab(
                          text: " Cooking rental ",
                        ),
                        Tab(
                          text: " Supplements ",
                        ),
                        Tab(
                          text: " shoping ",
                        ),
                        Tab(
                          text: " Recommended ",
                        ),
                        Tab(
                          text: " Meditation ",
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: <Widget>[
                      shop_tabviews(),
                      shop_tabviews(),
                      shop_tabviews(),
                      shop_tabviews(),
                      shop_tabviews(),
                      shop_tabviews(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class shop_tabviews extends StatelessWidget {
  const shop_tabviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 15),
            child: Text(
              'Breads',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 500,
              separatorBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Divider(
                    thickness: 1,
                  ),
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 175,
                  width: double.infinity,
                  // color: Colors.green,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: EdgeInsets.only(top: 15, right: 12),
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://source.unsplash.com/random?sig=$index&breads'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 40, left: 12),
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 4,
                                            right: 4,
                                            top: 2,
                                            bottom: 2),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 155, 98, 78),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Text(
                                          'Bestseller',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Whole wheat Bread',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '₹150',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 16,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 16,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 16,
                                          ),
                                          Text('85 reviwes')
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}




class CustomTabIndicator extends Decoration {
  final double radius;

  final Color color;


  final double indicatorHeight;

  const CustomTabIndicator({
    this.radius = 12,
    this.indicatorHeight = 5,
    this.color = Colors.black,
  });

  @override
  _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(
      this,
      onChanged,
      radius,
      color,
      indicatorHeight,
    );
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;
  final double radius;
  final Color color;
  final double indicatorHeight;

  _CustomPainter(
    this.decoration,
    VoidCallback? onChanged,
    this.radius,
    this.color,
    this.indicatorHeight,
  ) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    final Paint paint = Paint();
    double xAxisPos = offset.dx + configuration.size!.width / 2;
    double yAxisPos = offset.dy + configuration.size!.height - indicatorHeight/2;
    paint.color = color;

    RRect fullRect = RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(xAxisPos, yAxisPos),
        width: configuration.size!.width / 3,
        height: indicatorHeight,
      ),
     topLeft: Radius.circular(radius),
     topRight: Radius.circular(radius),
    );

    canvas.drawRRect(fullRect, paint);
  }
}