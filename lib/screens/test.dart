// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../main.dart';
import './contact.dart';
import './profile.dart';
import './calendar.dart';
import './grades.dart';
import './score.dart';
import './home.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

enum Question1 { A, B, C, D }
enum Question2 { A, B, C, D }

class _TestState extends State<Test> {
  int counter = 2;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Question1 _question1 = Question1.A;
  Question2 _question2 = Question2.A;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0), // here the desired height
        child: AppBar(
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10),
            child: SizedBox(
              height: 55,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Stack(
                children: <Widget>[
                  IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      }),
                  counter != 0
                      ? Positioned(
                          right: 11,
                          top: 11,
                          child: new Container(
                            padding: const EdgeInsets.all(2),
                            decoration: new BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                            ),
                            child: Text(
                              '$counter',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Stack(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                ],
              ),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFBA509D), Color(0xFF39459B)])),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        backgroundColor: Color(0xFFBA509D),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => const Score())); // setState(() {
          //   counter++;
          // });
        },
      ),
      endDrawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFBA509D), Color(0xFF39459B)]),
              ),
              accountName: const Text("Jhon Doe"),
              accountEmail: const Text("Beginner"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/user.png'),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Home()));
              },
            ),
            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Profile()));
              },
            ),
            ListTile(
              title: const Text("Calendar"),
              leading: const Icon(Icons.calendar_today),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Calendar()));
              },
            ),
            ListTile(
              title: const Text("Grades"),
              leading: const Icon(Icons.school),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Grades()));
              },
            ),
            ListTile(
              title: const Text("Contact"),
              leading: const Icon(Icons.inbox),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Contact()));
              },
            ),
            ListTile(
              title: const Text("Log out"),
              leading: const Icon(Icons.logout),
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text(
                      'Log out',
                      style: TextStyle(
                        color: Color(0xFFBA509D),
                      ),
                    ),
                    content: const Text(
                      'Are you sure you want to log out?',
                      style: TextStyle(
                        color: Color(0xFFBA509D),
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF39459B),
                        ),
                      ),
                      TextButton(
                        onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const MyApp()))
                        },
                        child: const Text(
                          'Log out',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFFBA509D),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 0.0, right: 1.0),
                  child: const Text(
                    "Grammar",
                    style: TextStyle(color: Color(0xFFBA509D), fontSize: 20.0),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 0.0, right: 1.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: <Widget>[
                          const Text(
                            "1. Katy was born in France. She is ________________",
                            style: TextStyle(
                                color: Color(0xFFBA509D), fontSize: 18.0),
                          ),
                          ListTile(
                            title: const Text('A. France'),
                            leading: Radio(
                              value: Question1.A,
                              groupValue: _question1,
                              onChanged: (Question1? value) {
                                setState(() {
                                  _question1 = value!;
                                });
                              },
                              activeColor: const Color(0xFF2F449B),
                            ),
                          ),
                          ListTile(
                            title: const Text('B. Belgium'),
                            leading: Radio(
                              value: Question1.B,
                              groupValue: _question1,
                              onChanged: (Question1? value) {
                                setState(() {
                                  _question1 = value!;
                                });
                              },
                              activeColor: const Color(0xFF2F449B),
                            ),
                          ),
                          ListTile(
                            title: const Text('C. Germany'),
                            leading: Radio(
                              value: Question1.C,
                              groupValue: _question1,
                              onChanged: (Question1? value) {
                                setState(() {
                                  _question1 = value!;
                                });
                              },
                              activeColor: const Color(0xFF2F449B),
                            ),
                          ),
                          ListTile(
                            title: const Text('D. Thaiwan'),
                            leading: Radio(
                              value: Question1.D,
                              groupValue: _question1,
                              onChanged: (Question1? value) {
                                setState(() {
                                  _question1 = value!;
                                });
                              },
                              activeColor: const Color(0xFF2F449B),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          const Text(
                            "2. Robert Speaks English because he was born in Ireland. He is _______.",
                            style: TextStyle(
                                color: Color(0xFFBA509D), fontSize: 18.0),
                          ),
                          ListTile(
                            title: const Text('A. English'),
                            leading: Radio(
                              value: Question2.A,
                              groupValue: _question2,
                              onChanged: (Question2? value) {
                                setState(() {
                                  _question2 = value!;
                                });
                              },
                              activeColor: const Color(0xFF2F449B),
                            ),
                          ),
                          ListTile(
                            title: const Text('B. Irish'),
                            leading: Radio(
                              value: Question2.B,
                              groupValue: _question2,
                              onChanged: (Question2? value) {
                                setState(() {
                                  _question2 = value!;
                                });
                              },
                              activeColor: const Color(0xFF2F449B),
                            ),
                          ),
                          ListTile(
                            title: const Text('C. Canadian'),
                            leading: Radio(
                              value: Question2.C,
                              groupValue: _question2,
                              onChanged: (Question2? value) {
                                setState(() {
                                  _question2 = value!;
                                });
                              },
                              activeColor: const Color(0xFF2F449B),
                            ),
                          ),
                          ListTile(
                            title: const Text('D. German'),
                            leading: Radio(
                              value: Question2.D,
                              groupValue: _question2,
                              onChanged: (Question2? value) {
                                setState(() {
                                  _question2 = value!;
                                });
                              },
                              activeColor: const Color(0xFF2F449B),
                            ),
                          ),
                        ],
                      ),
                    ],
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
