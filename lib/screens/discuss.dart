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
        elevation: 2,
        title: const Text("Discussion"),
      ),
    );
  }
}
