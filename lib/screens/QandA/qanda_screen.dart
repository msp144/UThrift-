import 'package:flutter/material.dart';
import 'package:uthrift/constants.dart';
import 'package:uthrift/screens/account/account_screen.dart';

class QandAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.8;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/qanda.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.transparent,
          title: Text("Questions ans Answers",
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
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                width: c_width,
                padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text("1. What is UThrift?" ,
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("UThrift is a thrift swap on the University of Miami’s campus that was founded in the fall of 2018. The purpose of UThrift is to promote sustainable practices and to redistribute existing goods in both the local Miami and University of Miami communities. UThrift provides a free thrifting platform that aims to mitigate both the environmental and social effects of the fast-fashion industry. UThrift is happy to announce that this platform will now be available digitally on our new app, ****. This app will increase the accessibility of thrifting now that you can trade and list your items online. You can always find UThrift in person at the Farmer’s Market every Wednesday during the school year and you can follow us @um_uthrift on Instagram to see where you can find us next!",
                                  ),
                                  Text("2. What is *** (UThrift’s App)  and how does it work?",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("*** is UThrift’s app that allows you to conveniently swap clothes with people in the community without having to stop by the UThrift stand. The purpose of *** is further UThrift’s mission of promoting sustainable practices and to redistribute goods in both the local Miami and University of Miami communities without contributing to the environmental and social effects of the fast-fashion industry."
                                  ),
                                  Text("Here are some steps to get you started: "
                                  ),
                                  Text("As a lister/trader:... 1... "
                                  ),
                                  Text("As a buyer/ looker/tradee:... 1... "
                                  ),
                                  Text("3. Can I trust swapping on UThrift’s App? " ,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("You can trust swapping on *** (UThrift’s App) because of our security policy. The security policy includes... . In addition to the security policy, *** relies on the *** users to  report and rate their traders once they have completed their trade. If you feel that your product was not delivered as promised, report this according to the security policy and give the trader an appropriate rating so that future tradees may keep an eye out. "
                                  ),
                                  Text("4. What should I do when I receive my order?" ,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Once your package has been delivered, please ensure your purchase is as described within the listing by carefully looking it over. After you have done so, make sure to rate your trader on ***!"
                                  ),
                                  Text("5. How to list a trade?" ,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Need to talk to app dev team. "
                                  ),
                                  Text("6. How do I cancel a trade?" ,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Need to talk to app dev team. "
                                  ),
                                  Text("7. What are UThrift’s COVID-19 precautions? " ,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Get details on the bin process, but how could this apply to the app? "),
                                  Text("8. What will help my listing sell/ be traded faster? " ,
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Hashtag"),
                                ],
                              ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}

/*style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GarineSecond',
                  ),*/