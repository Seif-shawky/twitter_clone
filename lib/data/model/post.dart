import 'package:projectbased/data/model/user.dart';

class Post {
  final int? id;
  final String? message;
  final User? owner;
  final DateTime? date;
  final String? image;

  Post(this.id, this.message, this.owner, this.date, this.image);

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      json['id'] as int?,
      json['message'] as String?,
      json['owner'] == null ? null : User.fromJson(json['owner']),
      json['date'] == null ? null : DateTime.parse(json['date'] as String),
      json['image'] as String?,
    );
  }
}
