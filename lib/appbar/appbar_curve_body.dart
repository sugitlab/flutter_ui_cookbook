import 'package:flutter/material.dart';

class AppBarCurveBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          title: Text('Hello World',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(90, 30),
            ),
          ),
          elevation: 0,
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  color: Colors.grey[100],
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Card(
                    elevation: 2,
                    child: Container(
                      height: 200,
                      width: 300,
                      child: Center(child: Text('Good day?')),
                    ),
                  ),
                  SizedBox(height: 50),
                  Card(
                    elevation: 2,
                    child: Container(
                      height: 200,
                      width: 300,
                      child: Center(child: Text('Happy?')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
