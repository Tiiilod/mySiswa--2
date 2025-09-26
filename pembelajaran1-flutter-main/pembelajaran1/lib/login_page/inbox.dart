import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(Icons.notifications_off),
      Text("tidak ada notifikasi"),
      ],
    ),
  ),
      appBar: AppBar(automaticallyImplyLeading: false,
      title: Center(child: Text("Inbox")),
    backgroundColor: Colors.lightBlueAccent,),);
  }
}