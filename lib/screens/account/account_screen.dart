import 'package:flutter/material.dart';
import 'package:uthrift/constants.dart';
import 'package:uthrift/screens/category/category_screen.dart';
import 'package:uthrift/screens/home/home_screen.dart';
import 'package:uthrift/screens/location/location_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uthrift/screens/location/location_screen.dart';
import 'package:uthrift/screens/upload/upload_screen.dart';
import 'package:uthrift/screens/upload/upload_image.dart';
import 'package:uthrift/screens/QandA/qanda_screen.dart';
import 'package:uthrift/screens/Search/search_screen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/category_background.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 5.0),
                CircleAvatar(
                  radius: 75.00,
                  backgroundImage: AssetImage(
                    'images/profilepic2.jpg',
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'Welcome, Pamela Cane!',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SignPainter',
                  ),
                ),
                SizedBox(height: 5.0),
                SizedBox(
                  width: 350.0,
                  height: 45.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CategoryScreen();
                      }));
                    },
                    textColor: Colors.black,
                    color: ut_orange,
                    splashColor: ut_dark_yellow,
                    elevation: 7.0,
                    padding: const EdgeInsets.all(7.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'BUYING',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GarineSecond',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                SizedBox(
                  width: 350.0,
                  height: 45.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return UploadImageScreen();
                          }));
                    },
                    textColor: Colors.black,
                    color: ut_orange,
                    splashColor: ut_dark_yellow,
                    elevation: 7.0,
                    padding: const EdgeInsets.all(7.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'UPLOADING',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GarineSecond',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                SizedBox(
                  width: 350.0,
                  height: 45.0,
                  child: RaisedButton(
                    onPressed: () {
                      /*Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return CategoryScreen();
                          }));*/
                    },
                    textColor: Colors.black,
                    color: ut_orange,
                    splashColor: ut_dark_yellow,
                    elevation: 7.0,
                    padding: const EdgeInsets.all(7.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'My Account Details',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GarineSecond',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                SizedBox(
                  width: 350.0,
                  height: 45.0,
                  child: RaisedButton(
                    onPressed: () {
                      /*Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return CategoryScreen();
                          }));*/
                    },
                    textColor: Colors.black,
                    color: ut_orange,
                    splashColor: ut_dark_yellow,
                    elevation: 7.0,
                    padding: const EdgeInsets.all(7.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'My Orders',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GarineSecond',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                SizedBox(
                  width: 350.0,
                  height: 45.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LocationScreen();
                      }));
                    },
                    textColor: Colors.black,
                    color: ut_orange,
                    splashColor: ut_pink,
                    elevation: 7.0,
                    padding: const EdgeInsets.all(7.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'Store Location',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GarineSecond',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                SizedBox(
                  width: 350.0,
                  height: 45.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    textColor: Colors.black,
                    color: ut_orange,
                    splashColor: ut_dark_yellow,
                    elevation: 7.0,
                    padding: const EdgeInsets.all(7.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'SIGN OUT',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GarineSecond',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 17.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return SearchScreen();
                              }));
                        },
                        splashColor: ut_pink,
                        child: Image.asset('images/search_icon.png'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        splashColor: ut_pink,
                        child: Image.asset('images/chat_icon.png'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return UploadImageScreen();
                              }));
                        },
                        splashColor: ut_pink,
                        child: Image.asset('images/upload_icon.png'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AccountScreen();
                          }));
                        },
                        splashColor: ut_pink,
                        child: Image.asset('images/profile_icon.png'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return QandAScreen();
                              }));
                        },
                        splashColor: ut_pink,
                        child: Image.asset('images/qanda_icon.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
