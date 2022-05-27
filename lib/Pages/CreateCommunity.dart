import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import '../config/themeSettings.dart';



class CreateCommunity extends StatefulWidget {
  @override
  _CreateCommunityState createState() => _CreateCommunityState();
}

class _CreateCommunityState extends State<CreateCommunity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.appTheme,
      darkTheme: ThemeClass.appTheme,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Create Community'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/community.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 50.0, left: 20.0, right: 20.0),
                      child: Center(
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width*0.2,
                          backgroundImage: AssetImage('assets/images/background.jpg'),
                        ),
                      ),
                    ),
                    Center(
                      child:SizedBox(
                        width: MediaQuery.of(context).size.width*0.8,
                        height: MediaQuery.of(context).size.height*0.15,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Community Name',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefixIcon: Icon(Icons.group,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child:SizedBox(
                        child: TextButton(
                          onPressed: (){}, //should assign a function to this
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.deepOrange,
                            onSurface: Colors.white70,
                          ),
                          child: Text(
                              'Create',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                          ),
                        ),
                        )
                      ),
                  ]
                )
              )
          ),
        ),
      ),
    );
  }
}