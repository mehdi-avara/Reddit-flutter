import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/AboutUs2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 130.0, right: 20.0),
                child: Text(
                  'Mehdi Avara',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 110.0, right: 20.0),
                child: Text(
                  'avaramehdi@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0, bottom: 10.0, left: 120.0, right: 20.0),
                child: Text(
                  '+989395991023',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.redAccent,
                  ),
                ),
              )
            ] ,
          ),
        ),
      ),
    );
  }



}