import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uthrift/constants.dart';
import 'package:uthrift/screens/account/account_screen.dart';

class LocationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LocationScreen();
  }
}

class _LocationScreen extends State<LocationScreen> {
  static const double lat = 25.718570;
  static const double lon = -80.275320;
  String _launchUrl =
      'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
  Future<void> _launched;
  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceSafariVC: true);
      }
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ut_green,
        appBar: AppBar(
          backgroundColor: ut_orange,
          title: Text(
            "UThrift Store Locator",
            style: TextStyle(
              color: ut_beige,
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'GarineSecond',
            ),
          ),
          leading: IconButton(
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
            children: [
              Flexible(
                  child: Image.asset('images/rectangular_orange_logo.jpg')),
              //SizedBox(height: 15.0),
              Center(
                child: SizedBox(
                  child: Text(
                    '''Address: 
                1306 Stanford Dr, 
                Coral Gables, FL 33146
                Tel: (305)284-2211''',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SignPainter',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    _launchUniversalLinkIos(_launchUrl);
                  },
                  textColor: Colors.black,
                  color: ut_orange,
                  splashColor: ut_dark_yellow,
                  elevation: 7.0,
                  padding: const EdgeInsets.all(7.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text(
                    "Open Google Maps",
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GarineSecond',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              RaisedButton(
                onPressed: () {
                  _makePhoneCall('tel:13052842211');
                },
                textColor: Colors.black,
                color: ut_orange,
                splashColor: ut_dark_yellow,
                elevation: 7.0,
                padding: const EdgeInsets.all(7.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Text(
                  "CALL US NOW",
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GarineSecond',
                  ),
                ),
              ),
              SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
