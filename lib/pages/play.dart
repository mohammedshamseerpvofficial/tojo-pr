import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class play extends StatefulWidget {
  const play({super.key});

  @override
  State<play> createState() => _playState();
}

class _playState extends State<play> {
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
                    BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
                child: Text(
                  'P',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'LAY',
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
                Icons.filter_alt_outlined,
                color: Colors.green,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.green,
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Image.asset(
                'images/activity.png',
                color: Colors.green,
                height: 80,
                width: 160,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 51,top: 12),
              child: Container(
                child: Text(
                  'Your one stop destination for multiple workout options, it\'s time to sweat!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Scaffold(
                body: SafeArea(
                  child: DefaultTabController(
                    length: 6,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, top: 21),
                          child: ButtonsTabBar(
                            elevation: 2,
                            backgroundColor: Color.fromARGB(255, 11, 162, 39),
                            unselectedBackgroundColor:
                                Color.fromARGB(255, 231, 231, 231),
                            unselectedLabelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            tabs: [
                              Tab(
                                text: "  Recommended  ",
                              ),
                              Tab(
                                text: " YOGA ",
                              ),
                              Tab(
                                text: " Shoop ",
                              ),
                              Tab(
                                text: " STRENGTH ",
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
                        Expanded(
                          child: TabBarView(
                            children: <Widget>[
                                 play_tabviews(),
                              play_tabviews(),
                                play_tabviews(),
                                   play_tabviews(),
                                      play_tabviews(),
                                         play_tabviews(),
                            ],
                          ),
                        ),
                      ],
                    ),
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

class play_tabviews extends StatelessWidget {
  const play_tabviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21,top: 12),
            child: Text('Joint Health',style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 21, right: 21, top: 12),
            child: Material(
              color: Colors.transparent,
              elevation: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage(
                            'images/yogaim.png'),
                        fit: BoxFit.cover)),
                height: 180,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20, top: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                minimumSize: Size(150, 40),
              ),
              onPressed: () {},
              child: Text('Activate plan'),
            ),
          )
        ],
      ),
    );
  }
}
