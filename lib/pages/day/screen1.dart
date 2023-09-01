import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      
                    },
                    child: Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Shadow color
                            spreadRadius: 0.5, // Spread radius
                            blurRadius: 15, // Blur radius
                            offset: Offset(0, 2), // Offset in (x, y) direction
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 9, top: 5),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green, width: 2)),
                                  child: Center(
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.only(bottom: 2),
                                        child: Text(
                                          's',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                    ),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Title: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'Rapid Bloated Belly Reduction',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(children: [
                                  Text(
                                    'Goals:  ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 12, right: 12, top: 2, bottom: 2),
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.9),
                                        borderRadius: BorderRadius.circular(56)),
                                    child: Text('Weightloss',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 12, right: 12, top: 2, bottom: 2),
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.9),
                                        borderRadius: BorderRadius.circular(56)),
                                    child: Text('Weightloss',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 12, right: 12, top: 2, bottom: 2),
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.9),
                                        borderRadius: BorderRadius.circular(56)),
                                    child: Text('Weightloss',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  )
                                ]),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Total Days: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      '30',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Food Type: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'Vegetables and fruits',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
