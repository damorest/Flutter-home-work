import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:less1/main.dart';

class CustomCard extends StatelessWidget {
    final CardInfo cardInfo;
    final VoidCallback onTap;

  const CustomCard({
    Key? key,
    required this.cardInfo,
    required this.onTap
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [
        Image.asset(
          'images/lake.jpg',
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
        ),


        Positioned(
          left: 16,
          right: 16,
          bottom: 0,
          child: Container(
            height: 80,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: Colors.black54,
            ),
            child: Column(
              children: [
                Text(
                  cardInfo.title,
                  style: const TextStyle(color: Colors.white, fontSize: 32),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),

        Positioned(
          top: 16,
          left: 16,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              height: 64,
              width: 64,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(64)),
                  color: Colors.black87
              ),
              child: Center(
                child: Text(
                  '# ${cardInfo.numberOfCard}',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
