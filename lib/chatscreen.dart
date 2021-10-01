import 'package:flutter/material.dart';
import 'package:whatsapp_prototype/shared/chatcard.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 14,
        itemBuilder: (context, index) {
          return ChatCard(
            Massege: 'Hi hanan',
            Name1: 'Hanan',
            Time: '2:00 am',
            image1: 'images/hanan.jpg',
          );
        });
  }
}
