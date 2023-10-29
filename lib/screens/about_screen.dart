import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // context.go('/setting');
            // Navigator.pop(context);
            context.pop();
          },
          child: const Text(
            'Go To Setting Screen',
          ),
        ),
      ),
    );
  }
}
