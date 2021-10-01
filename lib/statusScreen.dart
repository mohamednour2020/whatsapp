import 'package:flutter/material.dart';
import 'package:whatsapp_prototype/shared/mystatus.dart';
import 'package:whatsapp_prototype/shared/recentupdatescard.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[900],
    
      body: ListView(
        children: [
          MyStatus(
              Massege: '20 minutes ago',
              Name1: 'My Status',
              Time: 'Time',
              image1: 'images/hanan.jpg'),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('SHARE TO FACEBOOK STORY',
                    style: TextStyle(
                        color: Colors.teal[700],
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
                Icon(
                  Icons.share,
                  color: Colors.teal[700],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Text('Recent updates',
                style: TextStyle(color: Colors.grey[300], fontSize: 15)),
          ),
          Container(
            height: 5000,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return RecentUpdats(
                    Massege: '9 minutes ago',
                    Name1: 'Name1',
                    image1: 'images/hanan.jpg');
              },
              itemCount: 20,
            ),
          ),
        ],
        
      ),
      floatingActionButton: FloatingActionButton(
        child: Center(child: Icon(Icons.camera_alt)),
      onPressed: () {},
      backgroundColor: Colors.teal[700],
    ),
    );
    
  }
}
