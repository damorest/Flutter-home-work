import 'package:flutter/material.dart';
import 'package:less1/aboutcard.dart';
import 'package:less1/card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final List<CardInfo> _listOfCards = [];
//
//   @override
//   void initState() {
//     generalCardInfo();
//
//     super.initState();
//   }
//
//   void generalCardInfo() {
//     for (int i = 0; i < 6; i++) {
//       _listOfCards.add(CardInfo(
//         title: 'Title2 $i',
//         numberOfCard: i,
//       ));
//     }
//   }
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
      title: 'Fluuter home work',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter home work')),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard(numberOfCard: index,),
            );
          },
        ),
      ),
    );
  }
}


// class CardInfo {
//   String title;
//   final int numberOfCard;
//   final String imageUrl;
//
//   CardInfo({
//     required this.title,
//     required this.numberOfCard,
//     this.imageUrl = 'assets/images/image.jpg',
//   });
// }
//
// class AboutPage extends StatefulWidget {
//   final CardInfo cardInfo;
//
//   const AboutPage({super.key, required this.cardInfo});
//
//   @override
//   State<AboutPage> createState() => _AboutPageState();
// }
//
// class _AboutPageState extends State<AboutPage> {
//   late TextEditingController controller;
//   late CardInfo cardInfo2;
//
//   @override
//   void initState() {
//     cardInfo2 = CardInfo(
//       title: widget.cardInfo.title,
//       numberOfCard: widget.cardInfo.numberOfCard,
//       imageUrl: widget.cardInfo.imageUrl,
//     );
//     controller = TextEditingController(text: cardInfo2.title);
//
//     widget.cardInfo.title = 'asd';
//     super.initState();
//   }
//
//   void save() {
//     cardInfo2.title = controller.text;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter home work'),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset(
//                 'images/lake.jpg',
//                 width: double.infinity,
//                 height: 240,
//                 fit: BoxFit.cover,
//               ),
//               const SizedBox(height: 32),
//               TextField(controller: controller),
//               ElevatedButton(
//                   onPressed: () {
//                     save();
//                     Navigator.of(context).pop(cardInfo2);
//                   },
//                   child: Text('Save')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
   //
