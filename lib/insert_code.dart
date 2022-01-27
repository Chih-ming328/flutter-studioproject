import 'package:flutter/material.dart';
import './screens/home.dart';

class InsertCode extends StatefulWidget {
  const InsertCode({Key? key}) : super(key: key);

  @override
  _InsertCode createState() => _InsertCode();
}

class _InsertCode extends State<InsertCode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFBA509D), Color(0xFF39459B)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 10.0, bottom: 10),
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10),
                child: Text(
                  "Please insert the code that was sent your email.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 10.0, bottom: 30),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    labelText: 'Code',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Enter 6 digits code',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Home()));
                  },
                  child: const Text(
                    'Send Code',
                    style: TextStyle(color: Color(0xFFBA509D), fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
