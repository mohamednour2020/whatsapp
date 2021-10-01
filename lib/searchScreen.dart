import 'package:flutter/material.dart';
import 'package:whatsapp_prototype/shared/chatcard.dart';
import 'package:whatsapp_prototype/shared/mediasearch.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    Container(
                      child: TextFormField(
                          decoration: InputDecoration(
                        hintText: '   Search...',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        //contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      )),
                      height: 50,
                      width: MediaQuery.of(context).size.width - 60,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MediaSEARCH(Myicon: Icons.image,Mediaitem: 'photos',),
                            MediaSEARCH(Myicon: Icons.videocam,Mediaitem: 'videos',),
                            MediaSEARCH(Myicon: Icons.link,Mediaitem: 'links',),
                            
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           MediaSEARCH(Myicon: Icons.gif,Mediaitem: 'Gifs',),
                           MediaSEARCH(Myicon: Icons.headphones,Mediaitem: 'Audio',),
                           MediaSEARCH(Myicon: Icons.document_scanner,Mediaitem: 'Documents',),
                          ],),
                      ],
                    ),
                    
                    height: 80,
                    width: MediaQuery.of(context).size.width - 50,
                  ),
                )
              ],
            ),
            height: 160,
            color: Colors.grey[800],
          ),
          Container(
            height: 5000,
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 14,
                itemBuilder: (context, index) {
                  return ChatCard(
                    Massege: 'Hi hanan',
                    Name1: 'Hanan',
                    Time: '2:00 am',
                    image1: 'images/hanan.jpg',
                  );
                }),
          ),
        ],
      ),
    );
  }
}
