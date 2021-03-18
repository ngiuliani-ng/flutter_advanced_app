import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: backgroundImage(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: loginPanel(),
          ),
        ],
      ),
    );
  }

  Widget backgroundImage() {
    return Container(
      color: Colors.teal,
    );
  }

  Widget loginPanel() {
    return Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            offset: Offset(0, 0),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headline(),
          SizedBox(
            height: 8,
          ),
          title(),
          SizedBox(
            height: 16,
          ),
          body(),
          SizedBox(
            height: 16,
          ),
          buttons(),
        ],
      ),
    );
  }

  Widget headline() {
    return Text(
      "Find creative jobs and",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  Widget title() {
    return Text(
      "Express your Best Self.",
      style: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget body() {
    return Text(
      "Ideas come from a workspace you enjoy being in and they push you to become a better version of yourself.",
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }

  Widget buttons() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: MaterialButton(
            onPressed: () {},
            height: 52,
            color: Colors.black,
            child: Text(
              "Login Now",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                width: 1,
                color: Colors.white,
              ),
            ),
            textColor: Colors.white,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 2,
          child: MaterialButton(
            onPressed: () {},
            height: 52,
            color: Colors.white,
            child: Text(
              "Create New Account",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                width: 1,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
