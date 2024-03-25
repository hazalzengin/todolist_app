import 'package:apptodolist/const/color.dart';
import 'package:apptodolist/data/aut_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  final VoidCallback show;
  Signup(this.show,{super.key});

  @override
  State<Signup> createState() => _SignupState();
}
class _SignupState extends State<Signup>{
  FocusNode focusNode1= FocusNode();
  FocusNode focusNode2=FocusNode();
  FocusNode focusNode3=FocusNode();

  final email=TextEditingController();
  final password= TextEditingController();
  final password2= TextEditingController();
  @override
  void initState(){
    super.initState();
    focusNode1.addListener(() {setState(() {

    });});

    super.initState();
    focusNode2.addListener(() {setState(() {

    });});
    super.initState();
    focusNode3.addListener(() {setState(() {

    });});


  }
  @override
  Widget build(BuildContext Context){
    return Scaffold(
      backgroundColor: backgroundColors,
      body:SafeArea(
        child:SingleChildScrollView(
          child:Column(
              children: [
                SizedBox(height: 20),
                image(),
                SizedBox(height: 20),
                //email controller part
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child:TextField(
                      controller: email,
                      focusNode: focusNode1,
                      style: TextStyle(fontSize: 18, color:Colors.black),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email,color: focusNode1.hasFocus? custom_green:Color(0xffc5c5c5)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15
                        ),
                        hintText: 'Email',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color:Color(0xffc5c5c5),width: 2.0,

                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color:custom_green,width: 2.0,

                            )

                        ),
                      ),
                    ),),
                ),
                SizedBox(height: 20),
                //password controller part
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child:TextField(
                      controller: password,
                      focusNode: focusNode2,
                      style: TextStyle(fontSize: 18, color:Colors.black),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password,color: focusNode2.hasFocus? custom_green:Color(0xffc5c5c5)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15
                        ),
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color:Color(0xffc5c5c5),width: 2.0,

                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color:custom_green,width: 2.0,

                            )

                        ),
                      ),
                    ),),
                ),
                //confirm password
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child:TextField(
                      controller: password2,
                      focusNode: focusNode3,
                      style: TextStyle(fontSize: 18, color:Colors.black),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password,color: focusNode3.hasFocus? custom_green:Color(0xffc5c5c5)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15
                        ),
                        hintText: 'Password Confirm',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color:Color(0xffc5c5c5),width: 2.0,

                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color:custom_green,width: 2.0,

                            )

                        ),
                      ),
                    ),),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Already you have account ? ",
                        style: TextStyle(color:Colors.grey[700],fontSize: 14),),
                      SizedBox(width: 5),

                      GestureDetector(
                        onTap: widget.show,
                        child: Text(
                          "Login",style: TextStyle(color:Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),),),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //login button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    alignment: Alignment.center,
                    width:double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color:custom_green,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:
                    GestureDetector(
                      onTap: (){
                        AuthServices().signUpWithEmailandPassword(email.text, password.text);
                      },
                      child:
                      Text('Sign Up',
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),),
              ]

          ),
        ),),
    );
  }
  Padding image(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width:double.infinity,
        height: 300,
        decoration: BoxDecoration(image:DecorationImage(
          image: AssetImage('images/todo.jpeg'),fit:BoxFit.cover,
        ),
        ),),
    );

  }
}
