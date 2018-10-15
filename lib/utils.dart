import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

String commonUrl = "http://149.248.0.189:8080/billing/";
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

Future<String> getuserid() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString('uid');
}

Future<bool> isLoggedIn() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getBool('LoggedIn');
}

Future<List<String>> getuserdetails() async {
  List<String> getdetailslist = new List();
  SharedPreferences pref = await SharedPreferences.getInstance();
  getdetailslist.add(pref.getString('uid'));
  getdetailslist.add(pref.getString('uname'));
  getdetailslist.add(pref.getString('uemail'));
  return getdetailslist;
}

Future<String> createuserlogin(String uid, String uname, String uemail,
    String umobile, String uimage) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('uid', uid);
  pref.setString('uname', uname);
  pref.setString('uemail', uemail);
  pref.setBool('LoggedIn', true);
  return uid;
}

Future<bool> clearlogin() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.clear();
}

d(var debugvalue) {
  print('M3 $debugvalue');
}

Future<http.Response> getjsondata({String jsonvalue}) async {
  var mainurl = commonUrl + jsonvalue;
  d(mainurl);
  http.Response loginresponse = await http.get(mainurl);
  return loginresponse;
}

s(BuildContext context, String value) {
  Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(value,style:  TextStyle( fontFamily: 'Georgia'),)));
}
