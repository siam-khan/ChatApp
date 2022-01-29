import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget storyButton(String imgUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.only(right:8.0),
    child: Column(children: [
      CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
        radius: 26.0,

      ),
      SizedBox(
        height: 5.0,
        
      ),
      Text(userName,style: TextStyle(color: Colors.white),),
    ],),
  );
}