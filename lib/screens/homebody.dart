import 'package:flutter/material.dart';

class Homebody extends StatefulWidget {
  const Homebody({Key? key}) : super(key: key);

  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  int _index = 0;
  bool isgreencolor = false;
  late int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Stack(
            children: [
              Column(children: [
                Row(children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        AssetImage('assets/images/onBoardScreenImage2.png'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '  Olaniyan Favour',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      // Text(
                      //   'Let\'s get something for you!!!',
                      //   style: TextStyle(
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w400,
                      //       color: Colors.grey),
                      // ),
                    ],
                  ),
                ]),
                //search bar

                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 5, left: 5),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(70, 170, 170, 170),
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.black,
                      hintText: 'Search Latest Update',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.16, left: 5),
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    const Text(
                      "Trending Stories...",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    //scrollable horizontal view
                    const SizedBox(height: 15),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            //
                            const SizedBox(width: 10),
                            //
                            GestureDetector(
                              onTap: () {
                                setState(() => _index = 1);
                              },
                              child: Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                  color: _index == 1
                                      ? const Color.fromRGBO(13, 172, 10, 1)
                                      : const Color.fromRGBO(235, 235, 235, 1),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors
                                        .grey.shade300, // red as border color``
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/card1.png',
                                          width: 38.91,
                                          height: 40,
                                          color: _index == 1
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Clothes',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: _index == 1
                                                  ? const Color.fromRGBO(
                                                      235, 235, 235, 1)
                                                  : const Color.fromRGBO(
                                                      0, 0, 0, 0.5)),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            //
                            const SizedBox(width: 10),
                            //
                            //
                            GestureDetector(
                              onTap: () {
                                setState(() => _index = 2);
                              },
                              child: Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                  color: _index == 2
                                      ? const Color.fromRGBO(13, 172, 10, 1)
                                      : const Color.fromRGBO(235, 235, 235, 1),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors
                                        .grey.shade300, // red as border color
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/card2.png',
                                          width: 38.91,
                                          height: 40,
                                          color: _index == 2
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Sneakers',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: _index == 2
                                                  ? Color.fromRGBO(
                                                      235, 235, 235, 1)
                                                  : Color.fromRGBO(
                                                      0, 0, 0, 0.5)),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            //
                            SizedBox(width: 10),
                            //
                            //
                            GestureDetector(
                              onTap: () {
                                setState(() => _index = 3);
                              },
                              child: Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                  color: _index == 3
                                      ? const Color.fromRGBO(13, 172, 10, 1)
                                      : const Color.fromRGBO(235, 235, 235, 1),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors
                                        .grey.shade300, // red as border color
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/card0.png',
                                          width: 38.91,
                                          height: 40,
                                          color: _index == 3
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Best Deals',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: _index == 3
                                                  ? const Color.fromRGBO(
                                                      235, 235, 235, 1)
                                                  : const Color.fromRGBO(
                                                      0, 0, 0, 0.5)),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                setState(() => _index = 1);
                              },
                              child: Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                  color: _index == 1
                                      ? Color.fromRGBO(13, 172, 10, 1)
                                      : Color.fromRGBO(235, 235, 235, 1),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors
                                        .grey.shade300, // red as border color
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/card1.png',
                                          width: 38.91,
                                          height: 40,
                                          color: _index == 1
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Center(
                                        child: Text(
                                          'Clothes',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: _index == 1
                                                  ? const Color.fromRGBO(
                                                      235, 235, 235, 1)
                                                  : const Color.fromRGBO(
                                                      0, 0, 0, 0.5)),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            //
                            const SizedBox(width: 10),
                            //

                            //
                            //

                            //
                          ],
                        ),
                      ),
                    ), //

                    const SizedBox(
                      height: 8,
                    ),
                    //, near you
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Top Items near you',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            Text(
                              "SEE ALL",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //top items option
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),

                    //browse shops near you
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Browse shops near you',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    letterSpacing: 0.5,
                                    color: Colors.black)),
                            Text(
                              "SEE ALL",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //top items option
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
