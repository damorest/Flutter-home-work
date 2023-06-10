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

  @override
  void initState() {
    controller = TextEditingController(text: widget.cardInfo.title);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: const Text('Flutter home work')),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'images/lake.jpg',
                    width: double.infinity,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 32),
                  TextField(
                      controller: controller
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Save'),
                  ),
                ],
              ),
            ),
        ),
    );
  }
}
