import 'package:flutter/material.dart';
import 'package:whatsapp_prototype/shared/viocecall.dart';

import 'package:whatsapp_prototype/videocall.dart';






class Mychat extends StatefulWidget {
  @override
  _MychatState createState() => _MychatState();
}

class _MychatState extends State<Mychat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text('hanan'),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/hanan.jpg'),
            radius: 10,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Videocall()));
            },
            icon: Icon(
              Icons.videocam,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VoiceCall()));
            },
            icon: Icon(
              Icons.call,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                    decoration: InputDecoration(
                  hintText: '   massage',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  //contentPadding: EdgeInsets.symmetric(horizontal: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.tag_faces_rounded,
                    color: Colors.grey[500],
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt),
                    color: Colors.grey[500],
                  ),
                )),
                height: 50,
                width: MediaQuery.of(context).size.width - 60,
              ),
              SizedBox(
                width: 7,
              ),
              CircleAvatar(
                backgroundColor: Colors.teal[700],
                child: Center(
                  child: Icon(
                    Icons.mic,
                    size: 30,
                  ),
                ),
                radius: 25,
              )
            ],
          ),
        ],
      ),
    );
  }
}
