import 'package:flutter/material.dart';
import 'package:uthrift/constants.dart';
import 'package:uthrift/screens/account/account_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/homepage.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                ),
                CircleAvatar(
                  radius: 125.00,
                  backgroundImage: AssetImage(
                    'images/white_circle_logo.jpg',
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Welcome to UThrift!',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SignPainter',
                  ),
                ),
                SizedBox(height: 50.0),
                SizedBox(
                  width: 350.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AccountScreen();
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
                      'Login with CaneID',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GarineSecond',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
