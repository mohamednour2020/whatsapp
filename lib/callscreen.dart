import 'package:flutter/material.dart';
import 'package:whatsapp_prototype/shared/callcard.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 14,
        itemBuilder: (context, index) {
          return CallCard(
            Massege: 'today 6:00 am',
            Name1: 'Hanan',
            Time: '2:00 am',
            image1: 'images/hanan.jpg',
          );
        });
  }
}
