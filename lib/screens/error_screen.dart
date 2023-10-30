import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('エラー'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            error.toString(),
          ),
          const Text('申し訳ありませんが、もう一度お試しください')
        ],
      )),
    );
  }
}
