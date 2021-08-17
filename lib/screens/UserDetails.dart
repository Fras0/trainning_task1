import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainning_task1/models/user_model.dart';
import 'package:trainning_task1/utils.dart';

class UserDetails extends StatefulWidget {
  User user;
  UserDetails(this.user);
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.user.name}"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          InkWell(
            onTap: () {
              Launch_url("tel:${widget.user.phone}");
            },
            child: Text("phone:${widget.user.phone}"),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Launch_url("mailto:${widget.user.email}");
            },
            child: Text("email:${widget.user.email}"),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                Launch_url("https://${widget.user.website}");
              },
              child: Text("web: ${widget.user.website}"))
        ],
      ),
    );
  }
}
