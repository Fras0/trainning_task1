import 'package:dio/dio.dart';
import 'package:trainning_task1/post_model.dart';
import 'package:trainning_task1/user_model.dart';


class postsservices {
  String baseurl = "https://jsonplaceholder.typicode.com/";
  String postsurl = "posts";
Future<List<Post>>get_posts() async {
  List<Post> posts = [];
  print("$baseurl"+"$postsurl");
  Response res = await Dio().get("$baseurl"+"$postsurl");
  var data = res.data;
  data.forEach((element){
    posts.add(Post.fromJson(element));
  });
  return posts;
}
}
class user_services {
  String baseurl = "https://jsonplaceholder.typicode.com/";
  String userurl = "users";

  Future<List<User>>get_users() async {
    List<User> users = [];
    print("$baseurl"+"$userurl");
    Response res = await Dio().get("$baseurl"+"$userurl");
    var data = res.data;
    data.forEach((element){
      users.add(User.fromJson(element));
    });
    return users;
  }

}
