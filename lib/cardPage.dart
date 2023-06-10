import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:less1/main.dart';

class CustomCard extends StatelessWidget {
  final int numberOfCard;
  //final CardInfo cardInfo;

  const CustomCard({
    Key? key,
    required this.numberOfCard
  }) : super(key: key);

// const CustomCard({
//   super.key,
//   required this.cardInfo
//});



  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image.asset(
          'images/lake.jpg',
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
        ),

        // GestureDetector(
        //   onTap: () async {
        //     CardInfo data =
        //     CardInfo(title: 'hjkll', numberOfCard: 2);
        //     final newCardInfo = await Navigator.push<CardInfo>(
        //       context,
        //       MaterialPageRoute(
        //         builder: (_) => AboutPage(cardInfo: data),
        //       ),
        //     );
        //     if (newCardInfo != null) {
        //       updateCard(newCardInfo);
        //     }
        //   },
        //   child: Container(
        //     margin:
        //     const EdgeInsets.only(left: 16.0, right: 16.0),
        //     child: titleSection,
        //   ),
        // ),

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
            child: const Column(
              children: [
                Text(
                  'title',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),

        Positioned(
          top: 16,
          left: 16,
          child: Container(
            height: 64,
            width: 64,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(64)),
                color: Colors.black87
            ),
            child: Center(
              child: Text(
                '# $numberOfCard',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// Column _buildButtonColumn(Color color, IconData icon, String label) {
//   return Column(
//     mainAxisSize: MainAxisSize.min,
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Icon(icon, color: color),
//       Container(
//         margin: const EdgeInsets.only(top: 8),
//         child: Text(
//           label,
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w400,
//             color: color,
//           ),
//         ),
//       ),
//     ],
//   );
// }
//
// Widget buttonSection = Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
//     _buildButtonColumn(Colors.lightGreen, Icons.near_me, 'ROUTE'),
//     _buildButtonColumn(Colors.black87, Icons.share, 'SHARE'),
//   ],
// );
//
// indexBox(int index) {
//   return Container(
//     width: 65,
//     height: 65,
//     decoration: BoxDecoration(
//       color: Colors.black87,
//       borderRadius: BorderRadius.circular(50),
//     ),
//     child: Center(
//       child: Text(
//         '# $index.',
//         textAlign: TextAlign.center,
//         style: const TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           fontSize: 20,
//         ),
//       ),
//     ),
//   );
// }