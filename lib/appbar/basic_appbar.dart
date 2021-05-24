import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget {
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
