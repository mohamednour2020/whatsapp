import 'package:flutter/material.dart';

class Videocall extends StatefulWidget {
  @override
  _VideocallState createState() => _VideocallState();
}

class _VideocallState extends State<Videocall> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/hanan.jpg"))),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/hanan.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('hanan',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('Calling',
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ),
            SizedBox(
              height: 464,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.teal[800]),
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Center(
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.flip_camera_ios,
                        size: 30,
                      ),
                      Icon(
                        Icons.videocam_off,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.mic_off,
                        size: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.red[800],
                            child: Icon(
                              Icons.call_end_sharp,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
