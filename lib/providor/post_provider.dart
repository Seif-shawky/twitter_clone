import 'package:flutter/material.dart';
import 'package:projectbased/data/model/post.dart';
import 'package:projectbased/data/service/create_post_service.dart';
import 'package:projectbased/data/service/get_post_sevice.dart';

class PostProvider extends ChangeNotifier {
  final List<Post> list = [];
  String message = '';

  getPost() async {
    list.clear();
    list.addAll(await GetPostService().call());
    notifyListeners();
  }

  Future<void> createPost(String token) async {
    await CreatePostService(message, null, token).call();
    message = '';
    getPost();
  }
}
