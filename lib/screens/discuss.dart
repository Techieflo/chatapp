import 'package:flutter/material.dart';

class Discuss extends StatefulWidget {
  const Discuss({Key? key}) : super(key: key);

  @override
  State<Discuss> createState() => _DiscussState();
}

class _DiscussState extends State<Discuss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.134,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Discussion",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
