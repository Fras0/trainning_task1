import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainning_task1/MyCard.dart';
import 'package:trainning_task1/models/post_model.dart';

class post_details extends StatefulWidget {
  Post post;
  post_details(this.post);
  @override
  _post_detailsState createState() => _post_detailsState();
}

class _post_detailsState extends State<post_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.post.title}"),
      ),
      body: MyCard(content: "${widget.post.body}",),
    );
  }
}
