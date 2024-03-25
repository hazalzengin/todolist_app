
import 'package:apptodolist/auth/auth_page.dart';
import 'package:apptodolist/auth/main_page.dart';
import 'package:apptodolist/data/aut_data.dart';
import 'package:apptodolist/firebase_options.dart';
import 'package:apptodolist/home_page.dart';
import 'package:apptodolist/widgets/task_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
      runApp(ChangeNotifierProvider(
      create: (context)=>AuthServices(),
  child:const MyApp()
  ));
  }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskState(),
    );
  }
}
