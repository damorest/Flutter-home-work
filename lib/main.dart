import 'package:flutter/material.dart';
import 'package:less1/aboutcard.dart';
import 'package:less1/cardPage.dart';


void main() => runApp(const MyApp());

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
      _listOfCards.add(CardInfo(
        title: 'Title $i',
        numberOfCard: i,
      ));
    }
  }
//
//   void updateCard(CardInfo newCardInfo) {
//     setState(() {
//       _listOfCards[newCardInfo.numberOfCard] = newCardInfo;
//     });
//   }
//
//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter home work',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter home work')),
        body: ListView.builder(
          itemCount: _listOfCards.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard(
                cardInfo: _listOfCards[index],
                onTap: () {
                 Navigator.push(
                     context,
                 MaterialPageRoute(
                     builder: (_) => AboutPage(cardInfo: _listOfCards[index],
                     )
                 )
                 );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}


class CardInfo {
  final String title;
  final int numberOfCard;
  final String imageUrl;

  CardInfo({
    required this.title,
    required this.numberOfCard,
    this.imageUrl = 'assets/images/lake.jpg',
  });
}