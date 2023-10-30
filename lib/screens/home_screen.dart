import 'package:flutter/material.dart';
import 'package:go_router_builder_sample/router_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String get routeName => 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const DetailRoute(userName: 'Koichi5', userAge: 20, $extra: 101).go(context);
          },
          child: const Text(
            "Go To Detail Screen",
          ),
        ),
      ),
    );
  }
}
