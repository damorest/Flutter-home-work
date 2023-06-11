import 'package:flutter/material.dart';
import 'package:less1/main.dart';

class AboutPage extends StatefulWidget {
  final CardInfo cardInfo;

  const AboutPage({super.key, required this.cardInfo});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late TextEditingController controller;
  late CardInfo cardInfo2;

  @override
  void initState() {

    cardInfo2 = CardInfo(
      title: widget.cardInfo.title,
        numberOfCard: widget.cardInfo.numberOfCard,
      imageUrl: widget.cardInfo.imageUrl
    );
    controller = TextEditingController(text: cardInfo2.title);

    super.initState();
  }

  void save() {
   cardInfo2.title = controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter home work')),
      body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                 children: [
                  Column(
                    children: [
                      Image.asset(
                        'images/lake.jpg',
                        width: double.infinity,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 32),
                      TextField(controller: controller),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      save();
                      Navigator.of(context).pop(cardInfo2);
                    },
                    child: const Text('Save'),
                  ),
                ],
              ),
            ),
          ),
        ),
       );
  }
}
