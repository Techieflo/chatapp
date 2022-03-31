import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            "Profile",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
      ),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  "assets/images/onBoardScreenImage2.png",
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    // Text.rich(TextSpan(
                    //   text: ' Welcome',
                    //   style: TextStyle(
                    //       fontSize: 20,
                    //       fontWeight: FontWeight.bold,
                    //       fontFamily: 'Roboto'),
                    //   children: <InlineSpan>[
                    //     TextSpan(
                    //       text: ' Olaniyan',
                    //       style: TextStyle(
                    //           color: Colors.blue,
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.bold),
                    //     )
                    //   ],
                    // )),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListView(children: [
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "OLaniyan Favour Mobolaji",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          color: Colors.black.withOpacity(.6)),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.mail_outline,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "OLaniyan679@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          color: Colors.black.withOpacity(.7)),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.location_pin,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "5, Afe Babalola street lagos Nigeria",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          color: Colors.black.withOpacity(.7)),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "08022966663",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: Colors.black.withOpacity(.7),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      // borderRadius: BorderRadius.circular(20.0)
                    ),
                    width: double.infinity,
                    child: FlatButton(
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              color: Colors.black,
            ),
          ],
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0.0,
            child: FlatButton(
                onPressed: () {},
                child: const Text(
                  "LOG OUT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                )))
      ]),
    );
  }
}
