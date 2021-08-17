import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

void Launch_url(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
}



Pushpage(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

Poppage(BuildContext context){
  Navigator.pop(context);
}
