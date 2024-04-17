// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   static String routeName = 'MyHomePage';
//   final String title;
//   static const header = 'GeeksforGeeks';
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: const Center(
//         child: Text(
//           'Navigation Drawer Demo',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.green,
//               ),
//               child: Text(
//                 'Bangladesh Technical Education Board',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: const Text(' BTEB Govt WebSite '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.book),
//               title: const Text(' FCI WebSite '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
