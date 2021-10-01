import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoiceCall extends StatefulWidget {
  @override
  _VoiceCallState createState() => _VoiceCallState();
}

class _VoiceCallState extends State<VoiceCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
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
                      Icons.speaker_phone_rounded,
                      size: 30,
                    ),
                    Icon(
                      Icons.videocam,
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
    );
  }
}
