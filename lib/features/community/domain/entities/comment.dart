import 'package:json_annotation/json_annotation.dart';

class Comments{
  String message;
  DateTime createAt;
  String userId;
  String username;
  String profileUrl;

  Comments({required this.message, required this.createAt, required this.userId, required this.username, required this.profileUrl});


}