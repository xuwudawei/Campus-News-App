import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class UserModel {
  final String username;
  final String regNo;
  final String email;
  final String password;
  final String course;

  UserModel({
    this.username,
    this.regNo,
    this.email,
    this.password,
    this.course,
  });
}
