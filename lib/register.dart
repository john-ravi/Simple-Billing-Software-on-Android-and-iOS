import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:m3/colorspage.dart';
<<<<<<< HEAD
import 'package:m3/home.dart';
import 'package:m3/main.dart';
import 'utils.dart';

import 'user.dart';

=======
import 'package:m3/main.dart';
import 'package:m3/otp.dart';
import 'utils.dart';

>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    RegisterState myAppState() => new RegisterState();
    return myAppState();
  }
}

class RegisterState extends State<Register> {
  TextEditingController businessname = new TextEditingController();
  TextEditingController mobile = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController aadharcard = new TextEditingController();
<<<<<<< HEAD

  TextEditingController username = new TextEditingController();
  User user;

=======
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }

<<<<<<< HEAD
  void createUser(BuildContext context) async {
    await registerUser(user)
        .then((httpResponse) {
      print(httpResponse.body);
      var responseBody = json.decode(httpResponse.body);
      print(responseBody);
      var decodedJson = json.decode(responseBody);
      if (decodedJson.response.toString().contains("Failed")) {
      //  createUser(context);
      } else {
        //  goToHome(context);
      }

      createprefsuser(user.mobile, user.username, user.email);
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) =>
              new Home()));

    });
  }


=======
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
            fontFamily: 'Georgia',
            primaryColor: Colors.black,
            accentColor: Colors.black,
            hintColor: Colors.black),
        home: new Scaffold(body: new Builder(
          builder: (BuildContext context) {
            return new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  child: new Image.asset(
                    'assets/images/bg.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                      alignment: Alignment(0.0, -1.0),
                      child: new Image.asset(
                        'assets/images/logo.png',
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Center(
                        child: SizedBox(
                            height: 500.0,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 480.0,
                                  child: Card(
                                    elevation: 6.0,
                                    child: Column(
                                      children: <Widget>[
                                        new Container(
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(top: 10.0),
                                          child: new Text(
                                            'BUSINESS DETAILS',
                                            style: TextStyle(
                                                fontSize: 25.0,
                                                color: secondarycolor),
                                          ),
                                        ),
                                        new Container(
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(top: 5.0),
                                          child: new Text(
                                            'Appears On All Invoices',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                        new ListTile(
                                          leading: const Icon(
                                            Icons.person,
                                            color: secondarycolor,
                                          ),
                                          title: new TextFormField(
                                            decoration: new InputDecoration(
                                              hintText:
<<<<<<< HEAD
                                              'Please Enter Business Name',
                                              hintStyle: TextStyle(),
                                              labelText:
                                              'Enter Your Business Name',
=======
                                                  'Please Enter Business Name',
                                              hintStyle: TextStyle(),
                                              labelText:
                                                  'Enter Your Business Name',
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                              labelStyle: TextStyle(),
                                            ),
                                            keyboardType: TextInputType.text,
                                            controller: businessname,
                                          ),
                                        ),
                                        new ListTile(
                                          leading: const Icon(
<<<<<<< HEAD
                                            Icons.person,
                                            color: secondarycolor,
                                          ),
                                          title: new TextFormField(
                                            decoration: new InputDecoration(
                                              hintText:
                                              'Please Enter Your Name',
                                              hintStyle: TextStyle(),
                                              labelText: 'Enter Your Name',
                                              labelStyle: TextStyle(),
                                            ),
                                            keyboardType: TextInputType.text,
                                            controller: username,
                                          ),
                                        ),
                                        new ListTile(
                                          leading: const Icon(
=======
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                            Icons.phone,
                                            color: secondarycolor,
                                          ),
                                          title: new TextFormField(
                                            decoration: new InputDecoration(
                                              hintText:
<<<<<<< HEAD
                                              'Please Enter Mobile Number',
                                              hintStyle: TextStyle(),
                                              labelText:
                                              '10 Digits Mobile No Requried',
=======
                                                  'Please Enter Mobile Number',
                                              hintStyle: TextStyle(),
                                              labelText:
                                                  '10 Digits Mobile No Requried',
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                              labelStyle: TextStyle(),
                                            ),
                                            keyboardType: TextInputType.number,
                                            controller: mobile,
                                          ),
                                        ),
                                        new ListTile(
                                          leading: const Icon(
                                            Icons.email,
                                            color: secondarycolor,
                                          ),
                                          title: new TextFormField(
                                            decoration: new InputDecoration(
                                              hintText: 'Please Enter Email',
                                              hintStyle: TextStyle(),
                                              labelText:
<<<<<<< HEAD
                                              'Enter Your Email Address',
                                              labelStyle: TextStyle(),
                                            ),
                                            keyboardType:
                                            TextInputType.emailAddress,
=======
                                                  'Enter Your Email Address',
                                              labelStyle: TextStyle(),
                                            ),
                                            keyboardType:
                                                TextInputType.emailAddress,
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                            controller: email,
                                          ),
                                        ),
                                        new ListTile(
                                          leading: const Icon(
                                            Icons.lock,
                                            color: secondarycolor,
                                          ),
                                          title: new TextFormField(
                                            decoration: new InputDecoration(
                                              hintText:
<<<<<<< HEAD
                                              'Create Password (Min 6 & Max 8)',
=======
                                                  'Create Password (Min 6 & Max 8)',
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                              hintStyle: TextStyle(),
                                              labelText: 'Enter Your Password',
                                              labelStyle: TextStyle(),
                                            ),
<<<<<<< HEAD
                                            maxLength: 6,
=======
                                            maxLength: 8,
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                            keyboardType: TextInputType.text,
                                            obscureText: true,
                                            controller: password,
                                          ),
                                        ),
                                        new ListTile(
                                          leading: const Icon(
                                            Icons.credit_card,
                                            color: secondarycolor,
                                          ),
                                          title: Container(
                                            child: new TextFormField(
                                              decoration: new InputDecoration(
                                                hintText:
<<<<<<< HEAD
                                                'Please Enter Aadhar Card Number',
                                                hintStyle: TextStyle(),
                                                labelText:
                                                'Enter Your Aadhar Card Number',
                                                labelStyle: TextStyle(),
                                              ),
                                              keyboardType:
                                              TextInputType.number,
=======
                                                    'Please Enter Aadhar Card Number',
                                                hintStyle: TextStyle(),
                                                labelText:
                                                    'Enter Your Aadhar Card Number',
                                                labelStyle: TextStyle(),
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                              controller: aadharcard,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10.0),
                                          child: Row(
                                            mainAxisAlignment:
<<<<<<< HEAD
                                            MainAxisAlignment.center,
=======
                                                MainAxisAlignment.center,
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  'ALREADY A USER ? ',
                                                  style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      new MaterialPageRoute(
                                                          builder: (context) =>
<<<<<<< HEAD
                                                          new MyApp()));
=======
                                                              new MyApp()));
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                                },
                                                child: Container(
                                                  child: Text(
                                                    'LOGIN',
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: secondarycolor),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: ConstrainedBox(
                                    constraints:
<<<<<<< HEAD
                                    new BoxConstraints(minWidth: 250.0),
                                    child: new RaisedButton(
                                      onPressed: () async{
=======
                                        new BoxConstraints(minWidth: 250.0),
                                    child: new RaisedButton(
                                      onPressed: () {
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                        if (businessname.text.isEmpty) {
                                          s(context, 'Enter The Business Name');
                                        } else if (mobile.text.isEmpty) {
                                          s(context, 'Enter The Mobile Number');
                                        } else if (mobile.text.length > 10 ||
                                            mobile.text.length < 10) {
                                          s(context,
                                              'Please Check The Mobile Number');
                                        } else if (email.text.isEmpty) {
                                          s(context, 'Enter The Email Id');
                                        } else if (!isEmail(email.text)) {
                                          s(context,
                                              'Please Check The Email Id');
                                        } else if (password.text.isEmpty) {
                                          s(context, 'Enter The Password');
                                        } else if (password.text.length < 6) {
                                          s(context,
                                              'Minimum Length Of The Password Is 6');
                                        } else if (aadharcard.text.isEmpty) {
                                          s(context,
                                              'Enter The Aadhar Card Number');
                                        } else {
                                          showloader(context);
<<<<<<< HEAD

                                          await checkIfUserExists(
                                              strQueryMobile:
                                              'checkUser&mobile=${mobile.text}')
                                              .then((httpResponse) {
                                            print(httpResponse.body);
                                            var numberJsonResponse =
                                            json.decode(httpResponse.body);
                                            print(numberJsonResponse['response']);


                                            if (numberJsonResponse['response']
                                                .toString() !=
                                                'MobileRegistered') {
                                              // user not there

                                              user = new User(
                                                  businessname.text,
                                                  username.text,
                                                  mobile.text,
                                                  email.text,
                                                  password.text,
                                                  aadharcard.text);

                                              createUser(context);
                                              removeloader();

=======
                                          getjsondata(
                                                  jsonvalue:
                                                      'register?businessName=${businessname.text}&password=${password.text}&mobileNumber=${mobile.text}&email=${email.text}&aadharCard=${aadharcard.text}')
                                              .then((registerjson) {
                                            removeloader();
                                            var registerResponseJson =
                                                json.decode(registerjson.body);
                                            if (registerResponseJson['status']
                                                    .toString() ==
                                                'success') {
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                              Navigator.push(
                                                  context,
                                                  new MaterialPageRoute(
                                                      builder: (context) =>
<<<<<<< HEAD
                                                      new Home()));

                                            } else {
                                              s(context,
                                                  "Mobile Number already registered, Please Login");
                                            }
                                          });

=======
                                                          new MobileOTP()));
                                            } else {
                                              s(context,
                                                  registerResponseJson['msg']);
                                            }
                                          });
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                        }
                                      },
                                      color: primarycolor,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
<<<<<<< HEAD
                                          new BorderRadius.circular(30.0)),
=======
                                              new BorderRadius.circular(30.0)),
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                      child: new Text('REGISTER',
                                          style: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
                      child: Text.rich(
                        TextSpan(
                          children: const <TextSpan>[
                            TextSpan(
                                text:
<<<<<<< HEAD
                                'By clicking REGISTER you are applicable to ',
=======
                                    'By clicking REGISTER you are applicable to ',
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text: 'TERMS OF US',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        )));
  }
}
