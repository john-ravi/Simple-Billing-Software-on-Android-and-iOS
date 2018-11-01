import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:m3/allbills.dart';
import 'package:m3/colorspage.dart';
=======
import 'package:m3/allbills.dart';
import 'package:m3/colorspage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
import 'package:m3/create_bill.dart';
import 'package:m3/create_catergory.dart';
import 'package:m3/create_item.dart';
import 'package:m3/groups.dart';
import 'package:m3/help.dart';
import 'package:m3/list_customer.dart';
import 'package:m3/main.dart';
import 'package:m3/notification.dart';
import 'package:m3/products.dart';
<<<<<<< HEAD
import 'package:m3/user.dart';

import 'allbills.dart';
import 'bills_fragment.dart';
import 'calender_fragment.dart';
import 'delivery_boy.dart';
import 'orders.dart';
import 'profile.dart';
import 'profileFragment.dart';
import 'settings.dart';
import 'utils.dart';
import 'vacation.dart';
import 'vacationfragment.dart';
=======
import 'settings.dart';
import 'profile.dart';
import 'vacation.dart';
import 'delivery_boy.dart';
import 'allbills.dart';
import 'orders.dart';
import 'calender_fragment.dart';
import 'bills_fragment.dart';
import 'vacationfragment.dart';
import 'profileFragment.dart';
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    HomeState homeState() => new HomeState();
    return homeState();
  }
}

class HomeState extends State<Home> {
<<<<<<< HEAD
  int homeIndex = 3;
  User user;
  String userMobile;

  @override
  void initState() {
    initMobile();
    super.initState();
  }

=======
  int homeIndex = 0;
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
  final List<Widget> homechildren = [
    CalenderFragment(),
    BillFragments(),
    VacationFragment(),
    ProfileFragment(),
  ];
<<<<<<< HEAD

  initMobile() async{
    print("Init Mobile");
    await getuserMobile().then((stringM) {
      if (stringM == null) {
        print("NULL Mobile");
       // initMobile();
      } else {
        setState(() {
          print(stringM);
          userMobile = stringM;

        });
      }
    });
  }

=======
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
  void onTabTapped(int index) {
    setState(() {
      homeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(fontFamily: 'Georgia'),
      home: new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          title: Text('Home Screen'),
          backgroundColor: secondarycolor,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          currentIndex: homeIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.calendar,
                  color: secondarycolor,
                ),
                title: Text(
                  'CALENDER',
                  style: TextStyle(color: secondarycolor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.moneyBill,
                  color: secondarycolor,
                ),
                title: Text('BILLS', style: TextStyle(color: secondarycolor))),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.hotel,
                  color: secondarycolor,
                ),
                title:
<<<<<<< HEAD
                Text('VACATION', style: TextStyle(color: secondarycolor))),
=======
                    Text('VACATION', style: TextStyle(color: secondarycolor))),
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.user,
                  color: secondarycolor,
                ),
                title: Text('PROFILE', style: TextStyle(color: secondarycolor)))
          ],
        ),
        drawer: Drawer(
          child: new ListView(
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.all(0.0),
                child: Container(
                  color: secondarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
<<<<<<< HEAD
                        margin: EdgeInsets.only(top: 10.0),
                        child: Icon(FontAwesomeIcons.user, color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'User Id - Mobile',
=======
                        margin:
                            EdgeInsets.only(top: 10.0),
                        child: Icon(FontAwesomeIcons.user, color: Colors.white),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 10.0),
                        child: Text(
                          'User Id - 218',
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                      Container(
<<<<<<< HEAD
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "ID",
                          //  (userMobile != null ? userMobile : "123456789
                          // 0"),
=======
                        margin: EdgeInsets.only(
                            top: 10.0),
                        child: Text(
                          '1234567890',
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new ListTile(
                title: new Text('Create Bill'),
                leading: new Icon(
                  FontAwesomeIcons.moneyBillWave,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new CreateBill()));
                },
              ),
              new ListTile(
                title: new Text('Customers'),
                leading: new Icon(
                  FontAwesomeIcons.fileInvoice,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ListCustomers()));
                },
              ),
              new ListTile(
                title: new Text('Create Catergory'),
                leading: new Icon(
                  FontAwesomeIcons.caretUp,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new CreateCategory()));
                },
              ),
              new ListTile(
                title: new Text('Products'),
                leading: new Icon(
                  FontAwesomeIcons.productHunt,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Products()));
                },
              ),
              new ListTile(
                title: new Text('All Bills'),
                leading: new Icon(
                  FontAwesomeIcons.moneyBillAlt,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new AllBills()));
                },
              ),
              new ListTile(
                title: new Text('Delivery Boy'),
                leading: new Icon(
                  FontAwesomeIcons.truck,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new DeliveryBoy()));
                },
              ),
              new ListTile(
                title: new Text('Orders'),
                leading: new Icon(
                  FontAwesomeIcons.solidHandPaper,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Orders()));
                },
              ),
              new ListTile(
                title: new Text('Create Item'),
                leading: new Icon(
                  FontAwesomeIcons.plusCircle,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new CreateItem()));
                },
              ),
              new ListTile(
                title: new Text('Reports'),
                leading: new Icon(
                  FontAwesomeIcons.flag,
                  color: secondarycolor,
                ),
              ),
              new ListTile(
                title: new Text('My Profile'),
                leading: new Icon(
                  FontAwesomeIcons.userCircle,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Profile()));
                },
              ),
              new ListTile(
                title: new Text('Groups'),
                leading: new Icon(
                  FontAwesomeIcons.layerGroup,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Groups()));
                },
              ),
              new ListTile(
                title: new Text('Vacation'),
                leading: new Icon(
                  FontAwesomeIcons.hotel,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Vacation()));
                },
              ),
              new ListTile(
                title: new Text('Refer Friend'),
                leading: new Icon(
                  FontAwesomeIcons.share,
                  color: secondarycolor,
                ),
              ),
              new ListTile(
                title: new Text('Notification'),
                leading: new Icon(
                  FontAwesomeIcons.bell,
                  color: secondarycolor,
                ),
<<<<<<< HEAD
                onTap: () {
=======
                 onTap: () {
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Notifications()));
                },
              ),
              new ListTile(
                title: new Text('Help'),
                leading: new Icon(
                  FontAwesomeIcons.infoCircle,
                  color: secondarycolor,
                ),
<<<<<<< HEAD
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Help()));
=======
                 onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Help()));
>>>>>>> 214278badedb74e9f1396e0e34d533bd6359464b
                },
              ),
              new ListTile(
                title: new Text('Settings'),
                leading: new Icon(
                  FontAwesomeIcons.cog,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Settings()));
                },
              ),
              new ListTile(
                title: new Text('Log Out'),
                leading: new Icon(
                  FontAwesomeIcons.signOutAlt,
                  color: secondarycolor,
                ),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new MyApp()));
                },
              ),
            ],
          ),
        ),
        body: homechildren[homeIndex],
      ),
    );
  }
}
