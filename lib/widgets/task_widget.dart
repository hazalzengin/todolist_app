import 'package:apptodolist/const/color.dart';
import 'package:flutter/material.dart';

class TaskState extends StatefulWidget {
  const TaskState({super.key});

  @override
  State<TaskState> createState() => _TaskStateState();
}

class _TaskStateState extends State<TaskState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Container(
            width: double.infinity,
            height:130,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10) ,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color:Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0,2),
                )
              ]
            ),
            child:Row(
              children: [
                Container(
                  height: 130,
                  width: 100,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/kod.jpeg')
                    )
                  ),
                )
              ],
            )
          ),
        )
      )
    );
  }
}
