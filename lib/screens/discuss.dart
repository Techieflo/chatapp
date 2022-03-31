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
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
          ),
          Positioned(
              bottom: 0,
              child: Container(
                  margin: EdgeInsets.all(15.0),
                  height: 61,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.0),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey)
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 19,
                              ),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Start a discussion...",
                                      hintStyle:
                                          TextStyle(color: Colors.blueAccent),
                                      border: InputBorder.none),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.photo_camera,
                                    color: Colors.blueAccent),
                                onPressed: () {},
                              ),
                              // IconButton(
                              //   icon: Icon(Icons.attach_file,
                              //       color: Colors.blueAccent),
                              //   onPressed: () {},
                              // )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: const BoxDecoration(
                            color: Colors.blueAccent, shape: BoxShape.circle),
                        child: InkWell(
                          child: const Icon(
                            Icons.send_rounded,
                            color: Colors.white,
                          ),
                          onLongPress: () {},
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
