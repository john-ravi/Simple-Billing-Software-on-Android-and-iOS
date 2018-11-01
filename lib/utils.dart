import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

<<<<<<< HEAD
import 'user.dart';

String commonUrl = "http://149.248.0.189:8080/billing/";
String testingUrl = "http://18.191.190.195/billing/?page=";
String zeroUrl = "http://johnravi.000webhostapp.com/?page=";

String activeUrl = testingUrl;

=======
String commonUrl = "http://149.248.0.189:8080/billing/";
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
OverlayEntry loaderentry;

showloader(BuildContext context) {
  OverlayState loaderstate = Overlay.of(context);
  loaderentry = OverlayEntry(
      builder: (context) => Center(
<<<<<<< HEAD
        child: Container(
          padding: EdgeInsets.all(8.0),
          width: 50.0,
          height: 50.0,
          color: Colors.black45,
          child: CircularProgressIndicator(),
        ),
      ));
=======
            child: Container(
              padding: EdgeInsets.all(8.0),
              width: 50.0,
              height: 50.0,
              color: Colors.black45,
              child: CircularProgressIndicator(),
            ),
          ));
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
  loaderstate.insert(loaderentry);
}

removeloader() {
  loaderentry.remove();
}

<<<<<<< HEAD
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
=======
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
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
}

Future<bool> clearlogin() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.clear();
}

<<<<<<< HEAD


=======
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
d(var debugvalue) {
  print('M3 $debugvalue');
}

Future<http.Response> getjsondata({String jsonvalue}) async {
<<<<<<< HEAD
  var mainurl = activeUrl + jsonvalue;
=======
  var mainurl = commonUrl + jsonvalue;
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
  d(mainurl);
  http.Response loginresponse = await http.get(mainurl);
  return loginresponse;
}

<<<<<<< HEAD
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
=======
s(BuildContext context, String value) {
  Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(value,style:  TextStyle( fontFamily: 'Georgia'),)));
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
}
