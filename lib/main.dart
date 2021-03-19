import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        primaryColorLight: Colors.white,
      ),
      home: HomePage(),
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
            child: loginPanel(context),
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

  Widget loginPanel(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
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
          buttons(context),
        ],
      ),
    );
  }

  Widget headline() {
    return Text(
      "Find creative jobs and",
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }

  Widget title() {
    return Text(
      "Express your Best Self.",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget body() {
    return Text(
      "Ideas come from a workspace you enjoy being in and they push you to become a better version of yourself.",
      style: TextStyle(
        fontSize: 14,
      ),
    );
  }

  Widget buttons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: MaterialButton(
            onPressed: () {},
            height: 52,
            color: Theme.of(context).primaryColor,
            child: Text(
              "Login Now",
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).primaryColorLight,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColorLight,
              ),
            ),
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
            color: Theme.of(context).primaryColorLight,
            child: Text(
              "Create New Account",
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).primaryColor,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
