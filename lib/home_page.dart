import 'dart:html';

import 'package:flutter/material.dart';
import 'package:messgproject/Story_btn/chat_list.dart';
import 'package:messgproject/Story_btn/story_btn.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color mainColor =Color (0xFF177767);
var containerRadius =Radius.circular(30.0);
  List<String> imageUrl =[
    "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/3310695/pexels-photo-3310695.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/3186558/pexels-photo-3186558.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/3220360/pexels-photo-3220360.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/5046546/pexels-photo-5046546.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/6652928/pexels-photo-6652928.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor:Color (0xFF177767) ,
        elevation: 0.0,
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon:Icon(Icons.search),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),)
          ,
        ],
      ),
      body: Column(children: [
        Container(
          // padding: EdgeInsets.all(0.0),
          height: 100.0,
          child:Padding( padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              storyButton(imageUrl[0], "Ab"),
              storyButton(imageUrl[1], "Cd"),
              storyButton(imageUrl[2], "Ef"),
              storyButton(imageUrl[3], "Gh"),
              storyButton(imageUrl[4], "Im"),
              storyButton(imageUrl[5], "Nh"),
            ],
          ),
          ),
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
          decoration: BoxDecoration(
           color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: containerRadius,topRight: containerRadius),
          ),
          child:Padding(padding: EdgeInsets.only(left: 12.0,right: 12.0,top: 10.0),
          child: ListView(children: [
            ChatList(imageUrl[0],"Ab", "hey", "12/5/21",true),
            ChatList(imageUrl[1],"Cd", "msg", "14/2/21",false),
            ChatList(imageUrl[2],"Ef", "msg", "12/6/21",true),
            ChatList(imageUrl[3],"Gh", "msg", "18/9/21",false),
            ChatList(imageUrl[4],"Im", "msg", "14/4/21",true),
            ChatList(imageUrl[5],"Nh", "msg", "11/10/21",false),
           

          ],
          ),
          ),
          ),
        ),
        ),
      ],),
    );
  }
}