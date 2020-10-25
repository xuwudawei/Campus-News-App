import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class Login {
  String registrationNo;
  String password;
  Login({this.registrationNo, this.password});
  Future<Map> login() async {
    //print(json.encode({"regNo": this.registrationNo, "password": this.password}));
    try {
      var data = await http.post(
        '/user/' + this.registrationNo.toString(),
        body: json.encode({"regNo": registrationNo, "password": password}),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );
      print("userLoginStatus: " + json.decode(data.body)['logged'].toString());
      return json.decode(data.body);
    } catch (err) {
      print(err);
      return null;
    }
  }
}
