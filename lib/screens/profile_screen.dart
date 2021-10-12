// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:instagram_clone/constants.dart';
// ignore_for_file: prefer_const_constructors

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
          appBar: profileScreenAppBarWidget(),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              userInformationWidget(),
              Divider(
                color: kColorBlack,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(50, (index) {
                    return Container(
                      child: Card(
                        //color: Colors.blue,
                        child: Image.network("https://picsum.photos/id/2/200/300"),
                      ),
                    );
                  }),
                ),
              )
            ]),
          )),
    );
  }

  Container userInformationWidget() {
    return Container(
      //color: Colors.black,
      height: 150,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                child: Image.network(
                  'https://picsum.photos/id/2/200/300',
                ),
              ),
              Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text("107"),
                                  Text("posts"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text("107"),
                                  Text("followers"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text("107"),
                                  Text("following"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 250,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("Follow")),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_downward))
                          ],
                        ),
                      ],
                    ),
                  ])
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 300,
                      )
                    ],
                  ),
                  Text("and this line is the contiune of my description.",
                      style: TextStyle(fontSize: 18)),
                ],
              ),
              SizedBox(),
            ],
          ),
        ],
      ),
    );
  }

  AppBar profileScreenAppBarWidget() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person_add_alt_sharp,
            color: kColorBlack,
          )),
      title: Text(
        "Username",
        style: TextStyle(
          color: kColorBlack,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: kColorBlack,
          ),
        ),
      ],
    );
  }
}
