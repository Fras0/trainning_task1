import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainning_task1/MyCard.dart';
import 'package:trainning_task1/Services.dart';
import 'package:trainning_task1/UserDetails.dart';
import 'package:trainning_task1/post_details.dart';
import 'package:trainning_task1/user_model.dart';
import 'package:trainning_task1/utils.dart';
import 'post_model.dart';
import 'user_model.dart';

class post_screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<post_screen> {
  bool loading = true;
  List<Post> posts = [];
  String title ="";
  int length = 0;

  getpostslist() async {
    title = "Posts";
    posts = await postsservices().get_posts();
    loading = false;
    setState(() {});
    length = posts.length;

  }


  @override
  void initState() {
    super.initState();
    getpostslist();
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
                child:InkWell(
                 child: MyCard(content:"${posts[index].title}"),
                  onTap: (){pushpage(context,post_details(posts[index]));},
                )

            );
          }),
    );
  }
}
