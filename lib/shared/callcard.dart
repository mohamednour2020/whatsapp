import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_prototype/shared/viocecall.dart';





class CallCard extends StatelessWidget {
  String Name1;
  String Massege;
  String Time;
  String image1;
  CallCard(
      { this.Massege,
       this.Name1,
      this.Time,
       this.image1});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => VoiceCall()));
      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.transparent,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(image1),
                  radius: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      Name1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.call_made,
                        color: Colors.green,
                      ),
                      Text(
                        Massege,
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 170),
                child: Icon(Icons.call,color: Colors.teal[700],)
              )
            ],
          ),
        ),
      ),
    );
  }
}
