import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatus extends StatelessWidget {
  String Name1;
  String Massege;
  String Time;
  String image1;
  MyStatus(
      { this.Massege,
       this.Name1,
       this.Time,
      this.image1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(width: 4, color: Colors.grey)),
              child: CircleAvatar(
                backgroundImage: AssetImage(image1),
                radius: 35,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 20),
                  child: Text(
                    Name1,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                       ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    Massege,
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 170),
                child: Icon(Icons.more_horiz, color: Colors.grey[500])),
          ],
        ),
      ),
    );
  }
}
