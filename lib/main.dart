import 'package:flutter/material.dart';
import 'package:toku_by_me/screens/home_page.dart';

void main() {
  runApp(const toku());
}

class toku extends StatelessWidget {
  const toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

// class homePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(187, 2, 48, 71),
//       appBar: AppBar(
//         title: const Text(
//           'Toku',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         backgroundColor: const Color(0xFF023047),
//         shadowColor: const Color(0xFF000000),
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.only(left: 12),
//             width: double.infinity,
//             height: 60,
//             alignment: Alignment.centerLeft,
//             color: const Color(0xFFFB8500),
//             child: const Text(
//               'Numbers',
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 12),
//             width: double.infinity,
//             height: 60,
//             alignment: Alignment.centerLeft,
//             color: const Color.fromARGB(158, 0, 170, 255),
//             child: const Text(
//               'Family Members',
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 12),
//             width: double.infinity,
//             height: 60,
//             alignment: Alignment.centerLeft,
//             color: const Color.fromARGB(215, 255, 184, 3),
//             child: const Text(
//               'Colors',
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 12),
//             width: double.infinity,
//             height: 60,
//             alignment: Alignment.centerLeft,
//             color: const Color(0xFF219EBC),
//             child: const Text(
//               'Phrases',
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }