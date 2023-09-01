import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class rest extends StatefulWidget {
  const rest({super.key});

  @override
  State<rest> createState() => _restState();
}

class _restState extends State<rest> {
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
                    BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
                child: Text(
                  'R',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'EST',
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
              padding: const EdgeInsets.only(top: 3),
              child: Image.asset(
                'images/yoga.png',
                color: Colors.green,
                height: 120,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 51),
              child: Container(
                child: Text(
                  'Rest provides us with a way to coim the mind and be present by using Stress Relaxation techniques and movements.',
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
                                text: " Meditation ",
                              ),
                              Tab(
                                text: " Shoop ",
                              ),
                              Tab(
                                text: " Resting ",
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
                                 rest_tabviews(),
                              rest_tabviews(),
                                rest_tabviews(),
                                   rest_tabviews(),
                                      rest_tabviews(),
                                         rest_tabviews(),
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

class rest_tabviews extends StatelessWidget {
  const rest_tabviews({
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
            child: Text('Meditation',style: TextStyle(
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
