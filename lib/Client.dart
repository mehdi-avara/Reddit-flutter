import 'dart:io';

import 'package:flutter/material.dart';

class Apppp extends StatelessWidget{
  static final String ip = '192.168.226.130';
  static final int port = 8080;



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
      await Socket.connect(Apppp.ip, Apppp.port).then((serverSocket) {
        print('connected to server');
        serverSocket.write(_controller.text);
        var x = new StringBuffer();
        x.writeCharCode(0);
        serverSocket.write(x.toString());
        serverSocket.flush();
        print('write is done');
        serverSocket.listen((socket){
          MyHomePage.show = String.fromCharCodes(socket).trim();

        // print("ans is" + String.fromCharCodes(socket).trim());

          setState(() {});
        });
      });
    }

    return MyHomePage.show;
  }
}
class connector{
  static final String ip = '172.20.177.53';
  static final int port = 8080;
  static  Future<String> sendMessage(String message)async {
    String holder;
    if(!message.isEmpty){
      await Socket.connect(Apppp.ip, Apppp.port).then((serverSocket) {
        print('connected to server');
        serverSocket.write(message);
        var x = new StringBuffer();
        x.writeCharCode(0);
        serverSocket.write(x.toString());
        serverSocket.flush();
        serverSocket.listen((socket){
           holder= String.fromCharCodes(socket).trim();
            print(holder);
            return holder;
        });
      });
    }

  }
}