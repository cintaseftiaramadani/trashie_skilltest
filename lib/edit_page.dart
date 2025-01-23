import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gardener Account'),
      ),
      body: Center(
        child: Text(
          'Gardener Account Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
