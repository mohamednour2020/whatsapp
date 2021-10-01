import 'package:flutter/material.dart';
import 'package:whatsapp_prototype/callscreen.dart';
import 'package:whatsapp_prototype/searchScreen.dart';
import 'package:whatsapp_prototype/statusScreen.dart';

import 'chatscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            'Whatsapp',
            style: TextStyle(fontSize: 25, color: Colors.grey[500]),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
                icon: Icon(Icons.search),
                color: Colors.grey[500]),
            const SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert_outlined, color: Colors.grey[500]),
          ],
          bottom: const TabBar(tabs: <Widget>[
            Tab(
              text: ('Chat'),
            ),
            Tab(
              text: ('Status'),
            ),
            Tab(
              text: ('Calls '),
            ),
          ]),
        ),
        body: TabBarView(children: <Widget>[
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ]),
      ),
    );
  }
}
