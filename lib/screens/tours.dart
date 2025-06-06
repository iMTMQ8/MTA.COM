import 'package:flutter/material.dart';

class ToursScreen extends StatelessWidget {
  const ToursScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tours')),
      body: const Center(child: Text('Tours Screen')),
    );
  }
}
