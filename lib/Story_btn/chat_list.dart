import 'package:flutter/material.dart';

Widget ChatList(String imgUrl, String userName,String msg,String date,bool seen){
  return InkWell(
    onTap: (){},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(imgUrl),
           radius: 28.0,
          ),
          SizedBox(width: 8.0,),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              children: [
               Expanded(child: Text("userName",
               style: TextStyle(fontSize: 18.0,
               fontWeight: FontWeight.bold,
               ),)),
               Text(date),
              ],
            ),
            Row(
              children: [
                Expanded(child: Text("userName")),
                if(seen) Icon(Icons.check_circle,
                size: 16.0,
                color: Colors.green,),
                if(!seen)Icon(Icons.check_circle_outline_outlined,
                size: 18.0,
                color: Colors.grey,),
                
              ],
            ),
           
  
          ],
          ),
          ),
        ],
      ),
      
    ),
  );
}