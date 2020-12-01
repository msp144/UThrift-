import 'package:flutter/material.dart';
import 'package:uthrift/constants.dart';
import 'package:uthrift/screens/account/account_screen.dart';
import 'package:uthrift/screens/upload/upload_screen.dart';

class UploadImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ut_pink,
      appBar: AppBar(backgroundColor: Colors.transparent,
        title: Text("UPLOAD AN IMAGE",
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
              'Please Choose an Image:',
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
                    hintText: "Select an Image",
                    fillColor: ut_beige),
              ),
            ),
            SizedBox(height: 25.0),
            SizedBox(
              width: 350.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  /*Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return AccountScreen();
                            }));*/
                },
                textColor: Colors.black,
                color: ut_blue,
                splashColor: ut_dark_yellow,
                elevation: 7.0,
                padding: const EdgeInsets.all(7.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Text(
                  'BROWSE',
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
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  /*Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return AccountScreen();
                            }));*/
                },
                textColor: Colors.black,
                color: ut_blue,
                splashColor: ut_dark_yellow,
                elevation: 7.0,
                padding: const EdgeInsets.all(7.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Text(
                  'USE CAMERA',
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
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return UploadScreen();
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
                  'NEXT',
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
    );
  }
}
