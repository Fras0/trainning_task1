import 'package:flutter/material.dart';
import 'package:trainning_task1/screens/Screen.dart';
import 'package:trainning_task1/screens/post_screen.dart';
import 'package:trainning_task1/utils.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "Home Page",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Pushpage(context, Screen());
              },
              child: Text("users_screen"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Pushpage(context, post_screen());
              },
              child: Text("posts_screen"),
            ),


          ],
        ),
      ),
    );
  }
}
