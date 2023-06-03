import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      width: 540,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      // color: Colors.black,
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                const Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text(
            '41',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;
    indexBox(int index) {
      return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          '# $index',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      );
    }
    Widget boxIndex =  Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Text(
        '# 1',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(Colors.lightGreen, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.black87, Icons.share, 'SHARE'),
      ],
    );
    // Widget textSection = const Padding(
    //   padding: EdgeInsets.all(32),
    //   child: Text(
    //     'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    //         'Alps. Situated 1,578 meters above sea level, it is one of the '
    //         'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    //         'half-hour walk through pastures and pine forest, leads you to the '
    //         'lake, which warms to 20 degrees Celsius in the summer. Activities '
    //         'enjoyed here include rowing, and riding the summer toboggan run.',
    //     softWrap: true,
    //   ),
    // );
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter home work'),
        ),
        body: SafeArea(
          child: ListView(
               children: List.generate(5, (index) {
            return Container(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image.asset(
                      'images/lake.jpg',
                      width: 600,
                      height: 240,
                      fit: BoxFit.cover,
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: titleSection,
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        width: 200,
                        height: 50,
                        alignment: Alignment.topCenter,
                        color: Colors.white54,
                        child: buttonSection,
                      ),
                    ),
                    // Container(
                    // child: textSection,),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        child: indexBox(index),
                      ),
                    ),
                  ],
                ),
              ),
            );
          })
              //

              ),
          // child: Container(
          //       padding: const EdgeInsets.all(16),
          //       child: Stack(
          //         alignment: AlignmentDirectional.bottomCenter,
          //         children: List.generate(5, (index) => null),
          //         children: [
          //           Image.asset(
          //             'images/lake.jpg',
          //             width: 600,
          //             height: 240,
          //             fit: BoxFit.cover,
          //           ),
          //
          //           Container(
          //             margin: const EdgeInsets.only(left: 16.0, right: 16.0),
          //             child: titleSection,
          //             ),
          //           Positioned(
          //             top: 10,
          //             right: 10,
          //             child: Container(
          //               width: 200,
          //               height: 50,
          //               alignment: Alignment.topCenter,
          //               color: Colors.white54,
          //               child: buttonSection,
          //             ),
          //           ),
          //           // Container(
          //           // child: textSection,),
          //           Positioned(
          //             top: 10,
          //             left: 10,
          //             child: Container(
          //               child: boxIndex,
          //             ),
          //           ),
          //         ],
          //       ),
          //
          //
          //     ),
        ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
