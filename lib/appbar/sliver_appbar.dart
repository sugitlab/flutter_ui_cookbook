import 'package:flutter/material.dart';

class SliverSampleAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              title: Text('Hello Sliver World'),
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SimpleCard(),
                  SimpleCard(),
                ],
              ),
            ),
          ],
        ),
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
