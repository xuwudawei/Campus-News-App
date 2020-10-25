import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ChangeMyPassword {
  String registrationNo;
  String password;
  ChangeMyPassword({this.registrationNo, this.password});
  Future<Map> changePassword() async {
    //print(json.encode({"regNo": this.registrationNo, "password": this.password}));
    try {
      var data = await http.put(
        '/user/changePassword/' + this.registrationNo.toString(),
        body: json.encode({"regNo": registrationNo, "password": password}),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );
      print("New password: " + json.decode(data.body)['password'].toString());
      return json.decode(data.body);
    } catch (err) {
      print(err);
      return null;
    }
  }
}
