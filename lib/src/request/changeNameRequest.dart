import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ChangeName {
  String registrationNo;
  String username;
  ChangeName({this.registrationNo, this.username});
  Future<Map> changeName() async {
    //print(json.encode({"regNo": this.registrationNo, "password": this.password}));
    try {
      var data = await http.put(
        '/user/changeName/' + this.registrationNo.toString(),
        body: json.encode({"regNo": registrationNo, "name": username}),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );
      print("New name: " + json.decode(data.body)['name'].toString());
      return json.decode(data.body);
    } catch (err) {
      print(err);
      return null;
    }
  }
}
