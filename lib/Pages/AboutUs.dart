import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/AboutUs2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Container(
                child: Text(
                  'Mehdi Avara',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
          ),
          ]
        ),
      ),
      ),
    );
  }



}