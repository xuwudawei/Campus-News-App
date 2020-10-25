import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class SignUpRequest {
  String username;
  String api_key;
  String regNo;
  String email;
  String password;
  String course;

  //constrcutor
  SignUpRequest(
      {this.username,
      this.api_key,
      this.regNo,
      this.email,
      this.password,
      this.course});

  Future<Map> userSignUp() async {
    var data = await http.post("/add",
        body: json.encode({
          "name": username,
          "api_key": api_key,
          "regNo": regNo,
          "email": email,
          "password": password,
          "course": course
        }),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'});
    print(json.decode(data.body));
    return json.decode(data.body);
  }
}
