import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffCA035C),
        body: SafeArea(child: ContactCard()),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('images/avatar.jpeg'),
        ),
        SizedBox(height: 10),
        Text(
          'Murillo Cesar',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
          ),
        ),
        Text(
          'Fullstack Developer',
          style: TextStyle(
              fontSize: 15,
              color: Colors.teal.shade100,
              fontFamily: 'SourceSansPro',
              letterSpacing: 1),
        ),
        SizedBox(
          height: 20,
          width: 200,
          child: Divider(color: Colors.teal.shade100),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          color: Colors.white,
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.teal,
            ),
            title: Text(
              '+55 (12) 988 916 937',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 17,
                  letterSpacing: 1,
                  color: Colors.teal.shade900),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 50),
          color: Colors.white,
          child: ListTile(
            leading: Icon(
              Icons.mail,
              color: Colors.teal,
            ),
            title: Text(
              'murillo.bianconi@gmail.com',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 16,
                  color: Colors.teal.shade900),
            ),
          ),
        ),
      ],
    );
  }
}
