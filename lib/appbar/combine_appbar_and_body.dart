import 'package:flutter/material.dart';

class CombineAppbarAndBody extends StatelessWidget {
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
          title: Text('Hello World',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(90, 30),
            ),
          ),
          elevation: 0,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Container(
                height: 500,
                color: Theme.of(context).primaryColor,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                    ),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Text('Mood',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
