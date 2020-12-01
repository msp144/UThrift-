import 'package:flutter/material.dart';
import 'package:uthrift/constants.dart';
import 'package:uthrift/screens/account/account_screen.dart';
import 'package:uthrift/screens/category/category_screen.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ut_orange,
      appBar: AppBar(backgroundColor: Colors.transparent,
        title: Text("SEARCH OUR INVENTORY",
          style: TextStyle(
            color: ut_blue,
            fontSize: 45.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'GarineSecond',
          ),
        ),
        leading: IconButton(
          color: ut_blue,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountScreen()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Please Enter a Keyword:',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'SignPainter',
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: 350,
              child: TextField(
                cursorWidth: 5.0,
                cursorHeight: 20.0,
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: ut_blue),
                    hintText: "Example: Used Books...",
                    fillColor: ut_beige),
              ),
            ),
            SizedBox(height: 25.0),
            SizedBox(
              width: 350.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return CategoryScreen();
                            }));
                },
                textColor: Colors.black,
                color: ut_blue,
                splashColor: ut_dark_yellow,
                elevation: 7.0,
                padding: const EdgeInsets.all(7.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Text(
                  'SEARCH',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GarineSecond',
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),

          ],
        ),
      ),
    );
  }
}
