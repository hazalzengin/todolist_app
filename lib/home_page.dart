import 'package:apptodolist/data/aut_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatefulWidget{
  const Home_Screen({super.key});
  @override
  State<Home_Screen> createState()=> _HomeScreenState();

}
class _HomeScreenState extends State<Home_Screen> {
  void signOut(){
    final authService=Provider.of<AuthServices>(context,listen: false);
    authService.signOut();
  }
  @override
  Widget build(BuildContext Context){
    return Scaffold(
      appBar: AppBar(title: Text("HomePaGE"),
        actions: [
          IconButton(onPressed: signOut, icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}