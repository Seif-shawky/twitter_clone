import 'package:flutter/material.dart';
import 'package:projectbased/data/model/post.dart';
import 'package:projectbased/data/service/get_post_sevice.dart';

class PostProvider extends ChangeNotifier {
  final List<Post> list = [];

  Future<void> getPost() async {
    list.clear();
    list.addAll(await GetPostService().call());
    notifyListeners();
  }
}
