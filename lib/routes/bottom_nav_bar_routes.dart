import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/discover_screen.dart';
import 'package:instagram_clone/screens/main_screen.dart';
import 'package:instagram_clone/screens/profile_screen.dart';
import 'package:instagram_clone/screens/add_picture_screen.dart';

class BottomNavBarRoutes{

  navBarRoutes(_selectedIndex, context){
  if(_selectedIndex==0){
    debugPrint("0. index basıldı");
       Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
    }
    else if(_selectedIndex==1){
      debugPrint("1 basıldı");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverScreen()));
    }
     else if(_selectedIndex==2){
       debugPrint("2 basıldı");
       Navigator.push(context, MaterialPageRoute(builder: (context)=> AddPictureScreen()));
    }
     else if(_selectedIndex==3){
       debugPrint("3 basıldı");
       Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
    }
     else if(_selectedIndex==4){
       debugPrint("4 basıldı");
       Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
    }
    }

    }