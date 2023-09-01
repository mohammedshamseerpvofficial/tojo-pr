import 'package:flutter/material.dart';

class play_tab extends StatefulWidget {
  const play_tab({super.key});

  @override
  State<play_tab> createState() => _play_tabState();
}

class _play_tabState extends State<play_tab> {
  var selectedColor = Colors.green;
  var unseledColor = Colors.white;
  var selectedTextColor = Colors.white;
  var unselctedTextColor = Colors.black;

  var curentindex = [];
  var tapindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'PLAY',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              margin: EdgeInsets.only(top: 10),
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.green,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 8),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2, //                   <--- border width here
                    color: Colors.green),
                color: Colors.green,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'))),
          )
        ],
      ),
      body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 8,bottom: 8),
            child: Text('Unlimate arms',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 12,
                    color: Color.fromARGB(69, 0, 0, 0),
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white,
                border: Border.all(
                  color: Color.fromARGB(255, 215, 214, 214),
                  width: 2,
                ),
              ),
              height: 298,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                    ),
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            tapindex = index + 1;
                            print(tapindex);
                          });
                        },
                        child: Card(
                          elevation: 5,
                          color: tapindex == index + 1
                              ? selectedColor
                              : unseledColor,
                          child: Center(
                              child: Text(
                            '${index + 1}',
                            style: TextStyle(
                                color: tapindex == index + 1
                                    ? selectedTextColor
                                    : unselctedTextColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      );
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.16),
                    )
                  ],
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text(
                  'BICEPS',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 12),
              child: ListView.separated(
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 12,
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(255, 215, 214, 214),
                                      width: 2,
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://source.unsplash.com/random?sig=$index&Workout'),
                                        fit: BoxFit.cover),
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                height: 90,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(138, 0, 0, 0),
                                          borderRadius: BorderRadius.only(
                                              // topRight: Radius.circular(40.0),
                                              bottomRight: Radius.circular(8.0),
                                              // topLeft: Radius.circular(40.0),
                                              bottomLeft: Radius.circular(8.0)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Whtach',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 6),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(255, 215, 214, 214),
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 12,
                                        color: Color.fromRGBO(0, 0, 0, 0.16),
                                      )
                                    ],
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'TRACK',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(255, 215, 214, 214),
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 12,
                                        color: Color.fromRGBO(0, 0, 0, 0.16),
                                      )
                                    ],
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'HISTORY',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 12),
                        child: Container(
                          // color: Colors.yellow,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NO MO CURLS'.toUpperCase(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'sets:'.toUpperCase(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '5'.toUpperCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                width: 232,
                                child: Text(
                                  'REPS: 5-7 reps (using 1 1/2 reps) 10- 14 more reps (cut weight in half andattempt to double initial reps)',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  );
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
