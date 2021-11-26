import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Id Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age += 2;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amberAccent[400],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icon.jpg'),
                radius: 60.0,
              ),
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Abdullah',
              style: TextStyle(
                  color: Colors.amberAccent[400],
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Text(
              'Current Age',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
            SizedBox(height: 10.0),

            Text(
              '$age',
              style: TextStyle(
                  color: Colors.amberAccent[400],
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.amberAccent[400],
                ),
                SizedBox(width: 8.0),
                Text(
                  'abdlamnsr@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
