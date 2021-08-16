import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

void launch_url(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
}


pushpage(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

poppage(BuildContext context){
  Navigator.pop(context);
}
