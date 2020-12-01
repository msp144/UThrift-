import 'package:flutter/material.dart';
import 'package:uthrift/constants.dart';
import 'package:uthrift/screens/account/account_screen.dart';
import 'package:uthrift/screens/category/category_screen.dart';
import 'package:uthrift/screens/upload/upload_image.dart';

class UploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/upload_background.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.transparent,
          title: Text("UPLOADING",
            style: TextStyle(
              color: ut_orange,
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'GarineSecond',
            ),
          ),
          leading: IconButton(
            color: ut_orange,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UploadImageScreen()),
              );
            },
          ),
        ),
        body: SafeArea(
          child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
              children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Item Description:',
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
                          hintStyle: new TextStyle(color: ut_orange),
                          hintText: "Category.....",
                          fillColor: ut_beige),
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
                          hintStyle: new TextStyle(color: ut_orange),
                          hintText: "Type.....",
                          fillColor: ut_beige),
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
                          hintStyle: new TextStyle(color: ut_orange),
                          hintText: "Color.....",
                          fillColor: ut_beige),
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
                          hintStyle: new TextStyle(color: ut_orange),
                          hintText: "Brand.....",
                          fillColor: ut_beige),
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
                          hintStyle: new TextStyle(color: ut_orange),
                          hintText: "Condition.....",
                          fillColor: ut_beige),
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
                          hintStyle: new TextStyle(color: ut_orange),
                          hintText: "Description.....",
                          fillColor: ut_beige),
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
                          hintStyle: new TextStyle(color: ut_orange),
                          hintText: "More details.....",
                          fillColor: ut_beige),
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
                          hintStyle: new TextStyle(color: ut_orange),
                          hintText: "More details......",
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
                      color: ut_orange,
                      splashColor: ut_dark_yellow,
                      elevation: 7.0,
                      padding: const EdgeInsets.all(7.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: const Text(
                        'SUBMIT',
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
            ], ),
          ),
        ),
      ),
    );
  }
}
