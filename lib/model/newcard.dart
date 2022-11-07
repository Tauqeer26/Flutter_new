import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'package:getwidget/getwidget.dart';

class Newcard extends StatelessWidget {
  Newcard({this.content, this.picture,required this.ptitle,required this.pstitle,this.picture1});
  Widget? content;
  Image? picture;
  ImageProvider? picture1;
  String ptitle;
  String pstitle;
  @override
  Widget build(BuildContext context) {
    return GFCard(

            boxFit: BoxFit.cover,
            titlePosition: GFPosition.start,
            image: picture,
            showImage: true,
            title: GFListTile(
              avatar: GFAvatar(
                shape: GFAvatarShape.standard,
                size: GFSize.LARGE,
                backgroundImage: picture1,
                
              ),
              
              titleText: ptitle,
              subTitleText: pstitle,
              
            ),
            content: content,
            buttonBar: GFButtonBar(
              children: <Widget>[
                
                GFButton(
                  color: Color.fromARGB(255, 1, 39, 95),
                  onPressed: () {},
                    text: 'Details',
                ),
                GFButton(
                  
                  onPressed: () {},
                    text: 'Approve',
                    color: Colors.green,
                ),
                GFButton(
                  
                  onPressed: () {},
                    text: 'Decline',
                    color: Colors.redAccent,
                ),

                
              ],
            ),
          );
}

}