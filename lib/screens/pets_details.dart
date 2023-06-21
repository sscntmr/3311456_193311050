import 'package:flutter/material.dart';

class PetsDetailPage extends StatelessWidget {
  final String habitName;

  PetsDetailPage({required this.habitName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(habitName)),
      body: Center(
        child: Text('Detay sayfası for $habitName'),
      ),
    );
  }
}
