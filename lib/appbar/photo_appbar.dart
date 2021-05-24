import 'package:flutter/material.dart';

class PhotoAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          title: Text(
            'Hello World',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          flexibleSpace: Image.network(
            'https://images.unsplash.com/photo-1513407030348-c983a97b98d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80',
            fit: BoxFit.cover,
          ),
          toolbarHeight: 100,
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          SimpleCard(),
          SimpleCard(),
          SimpleCard(),
          SimpleCard(),
          SimpleCard(),
        ],
      ),
    );
  }
}

class SimpleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 300,
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
