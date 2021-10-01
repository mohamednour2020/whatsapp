import 'package:flutter/material.dart';

class MediaSEARCH extends StatelessWidget {
  IconData Myicon;
  String Mediaitem;
  MediaSEARCH({this.Mediaitem,this.Myicon});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Myicon),
            Text(Mediaitem),
          ],
        ),
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[700],
        ));
  }
}
