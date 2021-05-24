import 'package:flutter/material.dart';

class BorderRadiusAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          title: Text(
            'Hello World',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
