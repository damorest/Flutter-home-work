import 'package:flutter/material.dart';
import 'package:less1/aboutcard.dart';

void main() => runApp(const MaterialApp(home: MyApp()));


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final List<CardInfo> _listOfCards = [];

  @override
  void initState() {
    generalCardInfo();

    super.initState();
  }

  void generalCardInfo() {
    for (int i = 0; i < 10; i++) {
      _listOfCards.add(
        CardInfo(
          title: 'Title $i',
            numberOfCard: i,
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      //width: 540,
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
                  'Title: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'index',
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
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Text(
          '# $index.',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      );
    }


    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(Colors.lightGreen, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.black87, Icons.share, 'SHARE'),
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter home work'),
        ),
        body: SafeArea(
          child: ListView(
               children: List.generate(_listOfCards.length, (index) {
            return Container(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image.asset(
                      'images/lake.jpg',
                      width: double.infinity,
                      height: 240,
                      fit: BoxFit.cover,
                    ),

                    GestureDetector(
                      onTap:() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const AboutPage(),
                            ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: titleSection,
                      ),
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

class CardInfo {
  final String title;
  final int numberOfCard;
  final String imageUrl;

  CardInfo({
    required this.title,
    required this.numberOfCard,
    this.imageUrl = 'assets/images/image.jpg',
  });
}
