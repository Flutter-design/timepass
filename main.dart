import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _userId = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  var _textStyleBlack = new TextStyle(fontSize: 16.0, color: Colors.black);
  var _textStyleGrey = new TextStyle(fontSize: 16.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "instagram",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Billabong",
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, bottom: 7, left: 15, right: 15),
              child: TextField(
                controller: _userId,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16),
                  labelText: "Phone number ,email or Username",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                style: _textStyleBlack,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 2, left: 15, right: 15),
              child: TextField(
                obscureText: true,
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                  contentPadding: EdgeInsets.all(16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  isDense: true,
                ),
                style: _textStyleGrey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: _onTap,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 360,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Text(
                    "Forgot your login details?",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  child: Text(
                    "get help signin",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width / 2.4,
                  color: Colors.blueGrey,
                  child: ListTile(),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width / 2.4,
                  color: Colors.blueGrey,
                  child: ListTile(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 360,
                child: Text(
                  "Log in With Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                color: Colors.blue,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 220,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 17.5),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text('Dont have an account?',
                            style: _textStyleGrey),
                        SizedBox(
                          width: 5,
                        ),
                        new Text(
                          'Sign up.',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        // bottomNavigationBar:
        // )
      ),
    );
  }

  void _onTap() {
    if (_userId.text.isEmpty) {
      _showEmptyDialog("username");
    } else if (_password.text.isEmpty) {
      _showEmptyDialog("password");
    }
  }

  _showEmptyDialog(String title) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => new CupertinoAlertDialog(
        content: Text("$title,can't be empty"),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Ok"))
        ],
      ),
    );
  }
}
