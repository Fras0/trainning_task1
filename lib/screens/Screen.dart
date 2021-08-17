import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainning_task1/MyCard.dart';
import 'package:trainning_task1/services/Services.dart';
import 'package:trainning_task1/screens/UserDetails.dart';
import 'package:trainning_task1/models/user_model.dart';
import 'package:trainning_task1/utils.dart';
import '../models/post_model.dart';
import '../models/user_model.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool loading = true;
  List<Post> posts = [];
  List<User> users = [];
  String title ="";
  int length = 0;

  Getuserlist() async {
    title = "Users";
    users = await User_services().Get_users() ;
    loading = false;
    setState(() {
    });
    length = users.length;
  }

  @override
  void initState() {
    super.initState();
    Getuserlist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                      child:MyCard(content:"${users[index].name}"),
                      onTap:(){Pushpage(context, UserDetails(users[index]));},
                  ),
                );
              }),
    );
  }
}
