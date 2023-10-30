// import 'package:flutter/material.dart';

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({
//     super.key,
//     // required this.userName,
//     // required this.userId
//     });

//   // final String userName;
//   // final int userId;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Detail"),
//       ),
//       // body: Center(
//       //   child: Text(
//       //     "Hello $userName ! \n Your ID is $userId.",
//       //   ),
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key, required this.userName, this.userAge, this.extra});

  final String userName;
  final int? userAge;
  final int? extra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Center(
        child: Text("Hello $userName ! \n Your Age is $userAge! \n Your ID is $extra !"),
      ),
    );
  }
}
