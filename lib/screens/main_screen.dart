import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import 'package:instagram_clone/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex=0;


    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.home_outlined, color: kColorBlack),
              label: "",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.search,  color: kColorBlack),
               label: "",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.add,  color: kColorBlack),
               label: "",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded,  color: kColorBlack),
               label: "",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.person, color: kColorBlack),
               label: "",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        appBar: MainScreenAppBarWidget(),
        body: Column(
            children: [MainScreenStoriesWidget(), MainScreenBodyWidget()]),
      ),
    );
  }

  Expanded MainScreenBodyWidget() {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            child: Image.network(
                                "https://picsum.photos/id/7/200/300")),
                        Column(
                          children: [
                            Text("User Nickname"),
                            Text(""),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.do_not_touch_sharp))
                      ],
                    ),
                    Image.network("https://picsum.photos/id/4/200/300"),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.favorite)),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.add_comment)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                        SizedBox(
                          width: 175,
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.emoji_flags)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text("130 Likes",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox()
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "User nickname",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("description", style: TextStyle(fontSize: 15)),
                          SizedBox(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  SizedBox MainScreenStoriesWidget() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal, // YAN YANA DİZMEYE YARIYOR.
          itemCount: 16,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage:
                    NetworkImage("https://picsum.photos/id/2/200/300"),
              ),
            );
          }),
    );
  }

  AppBar MainScreenAppBarWidget() {
    return AppBar(
      backgroundColor: kColorWhite,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.camera_alt_rounded),
        color: kColorBlack,
      ),
      centerTitle: true,
      title: Image.asset(
        'assets/InstagramLogo.png',
        height: 50,
        width: 150,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.send,
            color: kColorBlack,
          ),
        )
      ],
    );
  }
}
