import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentUpdats extends StatelessWidget {
  String Name1;
  String Massege;

  String image1;
  RecentUpdats(
      { this.Massege, this.Name1,  this.image1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(width: 4, color: Colors.teal)),
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
          ],
        ),
      ),
    );
  }
}
