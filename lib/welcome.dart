import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uasgiwang/login.dart';
import 'package:uasgiwang/main.dart';
import 'package:uasgiwang/register.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        body: ListView(children: <Widget>[
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 50),
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/logo.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(200.0)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(children: <Widget>[
                      SizedBox(
                        width: 400, // <-- Your width
                        height: 60,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ))),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Login();
                              }));
                            },
                            child: Text("Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ))),
                      ),
                      Container(
                          margin:
                              const EdgeInsets.only(bottom: 30.0, top: 15.0),
                          child: SizedBox(
                            width: 400, // <-- Your width
                            height: 60,
                            child: OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      width: 2.0, color: Colors.pink.shade50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Register();
                                  }));
                                },
                                child: Text("Register",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ))),
                          )),
                      Text("Continue as a guest",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.pink.shade50,
                            decoration: TextDecoration.underline,
                            decorationThickness: 4,
                            fontWeight: FontWeight.bold,
                          )),
                    ]))
              ]))
            ],
          ))
        ]));
  }
}
