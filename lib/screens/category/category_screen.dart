import 'package:flutter/material.dart';
import 'package:uthrift/constants.dart';
import 'package:uthrift/screens/QandA/qanda_screen.dart';
import 'package:uthrift/screens/Search/search_screen.dart';
import 'package:uthrift/screens/account/account_screen.dart';
import 'package:uthrift/screens/upload/upload_image.dart';
import 'package:uthrift/screens/upload/upload_screen.dart';

class CategoryScreen extends StatelessWidget {
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
        body: Column(
          children: <Widget>[
            Flexible(
              child: GridView.count(
                //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.07,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          splashColor: ut_pink,
                          child: Image.asset('images/hanger_circle_icon.png'),
                        ),
                      ),
                      Text(
                        'Clothes',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GarineSecond',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          splashColor: ut_pink,
                          child: Image.asset('images/shoes_circle_icon.png'),
                        ),
                      ),
                      Text(
                        'Shoes',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GarineSecond',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          splashColor: ut_pink,
                          child:
                              Image.asset('images/accessory_circle_icon.png'),
                        ),
                      ),
                      Text(
                        'Accessories',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GarineSecond',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          splashColor: ut_pink,
                          child:
                              Image.asset('images/home_decor_circle_icon.png'),
                        ),
                      ),
                      Text(
                        'Home Decor',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GarineSecond',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          splashColor: ut_pink,
                          child: Image.asset('images/books_circle_icon.png'),
                        ),
                      ),
                      //SizedBox(height: 5.0),
                      Text(
                        'Books',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GarineSecond',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          splashColor: ut_pink,
                          child: Image.asset('images/other_circle_icon.png'),
                        ),
                      ),
                      //SizedBox(height: 5.0),
                      Text(
                        'Other',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GarineSecond',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //SizedBox(height: 5.0),
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
    );
  }
}
