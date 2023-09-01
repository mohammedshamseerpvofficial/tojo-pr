import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 246, 236),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Color.fromARGB(255, 245, 246, 245).withOpacity(.5),
        title: Text(
          'Data',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 12, bottom: 2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ExpansionTile(
                          // initiallyExpanded: true,

                          backgroundColor: Colors.white,
                          collapsedBackgroundColor: Colors.white,

                          collapsedTextColor: Colors.black,
                          collapsedIconColor: Colors.black,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          title: Text(
                            'Day ${index + 1}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: Icon(Icons.date_range_rounded,
                              color: Colors.green),

                          children: [
                            Column(
                              children: [
                                dayListelement(title: 'Supplements', elements: [
                                  'Now super enzymes',
                                  'Now super enzymes',
                                ]),
                                dayListelement(title: 'Hydration', elements: [
                                  'Digestion healt',
                                  'Digestion healt',
                                ]),
                                dayListelement(
                                    title: 'Meal pattern',
                                    elements: [
                                      'High Protein, Low Carb X meal'
                                    ]),

                                    
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 2),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(9)),
                child: Center(
                  child: Text(
                    'Activate Plan',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class dayListelement extends StatelessWidget {
  var elements;

  var title;

  dayListelement({super.key, required this.title, required this.elements});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${title}:',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 25,
          // color: Colors.yellow,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: elements.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(.9),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(elements[index].toString(),
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
