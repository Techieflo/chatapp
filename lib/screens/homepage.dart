import 'package:closameet/screens/discuss.dart';
import 'package:closameet/screens/homebody.dart';
import 'package:closameet/screens/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;
  int _index = 0;
  bool isgreencolor = false;
  late int index;
  List<StatefulWidget> widgetsOptions = [
    const Homebody(),
    const Discuss(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Homebody(),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger),
            label: "Discuss",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ]));
  }
}
