import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Text(
          "Ini halaman $title",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
