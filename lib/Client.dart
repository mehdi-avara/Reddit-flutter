import 'dart:io';

import 'package:flutter/material.dart';

class App extends StatelessWidget{
  static final String ip = '172.20.177.53';
  static final int port = 1111;



  @override
  Widget build(BuildContext context) {
    final title = ' TCP Socket';
    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }

}

class MyHomePage extends StatefulWidget {
  final String title;
  final Socket socket;
  static String show = "";


  MyHomePage({Key key, this.title, this.socket}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Form(
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(labelText: 'Send a message'),
                ),
              ),
              Text(MyHomePage.show),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            String answer = await _sendMessage();
            print('the answer is ' + answer);
            if (answer == 'invalid'){
              print('answer is invalid');
            }
            else{
              print('answer is valid');
            }
          },
          tooltip: 'Send message',
          child: Icon(Icons.send),
        )
    );
  }
  Future<String> _sendMessage() async {
    if(_controller.text.isNotEmpty){
      await Socket.connect(App.ip, App.port).then((serverSocket) {
        print('connected to server');
        serverSocket.write(_controller.text);
        serverSocket.flush();
        print('write is done');
        serverSocket.listen((socket){
          MyHomePage.show = String.fromCharCodes(socket).trim().substring(2);
          setState(() {});
          print('show is ' + MyHomePage.show);
        });
      });
    }

    return MyHomePage.show;
  }
}