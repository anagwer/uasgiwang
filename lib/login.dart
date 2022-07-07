import 'package:flutter/material.dart';
import 'package:uasgiwang/Home.dart';
import 'package:uasgiwang/login.dart';
import 'package:uasgiwang/main.dart';
import 'package:uasgiwang/welcome.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
            child: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              SizedBox(
                width: 50, // <-- Your width
                height: 50,
                child: OutlinedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/arrow.png",
                      height: 80,
                    )),
              ),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 0),
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/logo.jpg')),
                        borderRadius: BorderRadius.all(Radius.circular(200.0)),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 15.0, top: 30.0),
                        child: SizedBox(
                            width: 400, // <-- Your width
                            height: 60,
                            child: TextField(
                                decoration: InputDecoration(
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.pink.shade50,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              hintText: 'Username',
                            )))),
                    SizedBox(
                        width: 400, // <-- Your width
                        height: 60,
                        child: TextField(
                            decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.pink.shade50,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          hintText: 'Password',
                          suffix: InkWell(
                            child: Icon(
                              Icons.visibility,
                            ),
                          ),
                        ))),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
                      child: Text("Forget Password?",
                          style: new TextStyle(
                            color: Colors.pink.shade50,
                          )),
                    ),
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
                              return HomeScreen();
                            }));
                          },
                          child: Text("Login",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ))),
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Row(children: <Widget>[
                          Image.asset(
                            "assets/images/line.png",
                            width: 115,
                          ),
                          Text("  Or Login With  ",
                              style: new TextStyle(
                                color: Colors.pink.shade50,
                              )),
                          Image.asset(
                            "assets/images/line.png",
                            width: 115,
                          )
                        ])),
                    Row(children: <Widget>[
                      SizedBox(
                        width: 100, // <-- Your width
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  width: 2.0, color: Colors.pink.shade50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/images/fb.png",
                              height: 30,
                            )),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            width: 100, // <-- Your width
                            height: 60,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      width: 2.0, color: Colors.pink.shade50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                  "assets/images/Google.png",
                                  height: 30,
                                )),
                          )),
                      SizedBox(
                        width: 100, // <-- Your width
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  width: 2.0, color: Colors.pink.shade50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/images/Apple.png",
                              height: 30,
                            )),
                      ),
                    ]),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: RichText(
                        text: new TextSpan(
                          children: [
                            new TextSpan(
                              text: "Don't have an account? ",
                              style: new TextStyle(
                                color: Colors.pink.shade50,
                                decorationThickness: 6,
                              ),
                            ),
                            new TextSpan(
                              text: 'Register Now',
                              style: new TextStyle(
                                color: Colors.blue,
                                decorationThickness: 6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]))
            ]),
          )
        ])));
  }
}
