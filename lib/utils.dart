import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'user.dart';

String commonUrl = "http://149.248.0.189:8080/billing/";
String testingUrl = "http://18.191.190.195/billing/?page=";
String zeroUrl = "http://johnravi.000webhostapp.com/?page=";

String activeUrl = testingUrl;

OverlayEntry loaderentry;

showloader(BuildContext context) {
  OverlayState loaderstate = Overlay.of(context);
  loaderentry = OverlayEntry(
      builder: (context) => Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          width: 50.0,
          height: 50.0,
          color: Colors.black45,
          child: CircularProgressIndicator(),
        ),
      ));
  loaderstate.insert(loaderentry);
}

removeloader() {
  loaderentry.remove();
}

Future<bool> isLoggedIn() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getBool('LoggedIn');
}

Future<String> getuserMobile() async {
  SharedPreferences pref = await SharedPreferences.getInstance();

  return pref.getString('uid');
}
Future<String> getuserName() async {
  SharedPreferences pref = await SharedPreferences.getInstance();

  return pref.getString('uname');
}
Future<String> getUserEmail() async {
  SharedPreferences pref = await SharedPreferences.getInstance();

  return pref.getString('uemail');
}

Future<String> createprefsuser(String mobile, String uname, String uemail) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('uid', mobile);
  pref.setString('uname', uname);
  pref.setString('uemail', uemail);
  pref.setBool('LoggedIn', true);
  print("Pref Created $mobile");
  return mobile;
}

void createPrefUserLogin(String mobile, String password) {
  createprefsuser(mobile, "uname", "uemail");
}

Future<bool> clearlogin() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.clear();
}



d(var debugvalue) {
  print('M3 $debugvalue');
}

Future<http.Response> getjsondata({String jsonvalue}) async {
  var mainurl = activeUrl + jsonvalue;
  d(mainurl);
  http.Response loginresponse = await http.get(mainurl);
  return loginresponse;
}

Future<http.Response> checkIfUserExists({String strQueryMobile}) async {
  var userUrl = activeUrl + strQueryMobile;
  d(userUrl);
  http.Response userExistsResponse = await http.get(userUrl);
  return userExistsResponse;
}

Future<http.Response> checkIfUserRegistered(
    {String strQueryRegistered, String strMobile, String password}) async {
  var userUrl = activeUrl + strQueryRegistered;
  d(userUrl);
  http.Response userExistsResponse = await http.get(userUrl);
  return userExistsResponse;
}

Future<http.Response> registerUser(User user) async {
  String strInsertUser = "createRegisteredUser&" +
      "user_name=" +
      user.username.toString() +
      "&email_id=" +
      user.email.toString() +
      "&mobile_number=" +
      user.mobile +
      "&password=" +
      user.password +
      "&aadhar_card=" +
      user.aadharCard;

  var s = activeUrl + strInsertUser;
  d(s);
  http.Response registerUserResponse = await http.get(s);

  return registerUserResponse;
}

s(BuildContext context, String value) {
  try {
    Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text(
          value,
          style: TextStyle(fontFamily: 'Georgia'),
        )));
  } on Exception catch (e) {
    // TODO
  }
}
