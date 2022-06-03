import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_flutter/Pages/HomePage.dart';
import 'package:ui_flutter/Pages/SettingPage.dart';
import 'package:ui_flutter/models/data.dart';
import '../config/themeSettings.dart';
import '../models/community.dart';
class addPost extends StatefulWidget {
  const addPost({Key key}) : super(key: key);

  @override
  State<addPost> createState() => _addPostState();
}



class _addPostState extends State<addPost> {
  Datas data = Datas();
  get body => null;
 String _title;
  String _description;
  Community _community;
  int communityId;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.appTheme,
      darkTheme: ThemeClass.appTheme,
      home: Scaffold(

    body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ThemeClass.AddPost),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 140.0, left: 40.0, right: 40.0,bottom: 10.0),
                child:Column(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Text('Choose The Community',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          popUpMenu(context),
                        ],
                      ),
                    ),
                    ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                            labelText: 'Title',
                            hintText: 'Add a Title',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            )
                        ),
                        onChanged: (value){
                          _title=value;
                        },
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 60.0, left: 0.0, right: 0.0),
                        child: TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                              labelText: 'Description',
                              hintText: 'Add a Description',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          onChanged: (value){
                            _description=value;
                          }
                        ),
                      ),
                    ),
                    TextButton(onPressed: (){
                      if(_title!=null && _description!=null){
                        data.addPostWithTitle(_title,_description,_community);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));

                      }
                      else{
                        print('Please fill all the fields');
                      }
                    },
                      child: Text('Add Post',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
            ),
      ),
    ),
      ),

    );
  }
  PopupMenuButton popUpMenu(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(Icons.list),
      itemBuilder: (context) => data.community
          .map((item) => PopupMenuItem<int>(
        value: item.id,
        child: Text(
          item.name,
        ),
      ))
          .toList(),
      onSelected: (value) {
        setState(() {
          _community = data.community.firstWhere((item) => item.id == value);
        });
      },
    );
  }

}
