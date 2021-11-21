import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),

  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level= 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Center(child: Text("id card")),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          setState(() {
            level +=1;
          });
        },
        child: Icon(Icons.plus_one),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/2121741.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[850],
            ),

            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 3.0,
                color: Colors.amberAccent[100],
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Prince Hirapara',
              style: TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Level',
              style: TextStyle(
                letterSpacing: 3.0,
                color: Colors.amberAccent[100],
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[800],
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'prince.hirapara890@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),

                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

