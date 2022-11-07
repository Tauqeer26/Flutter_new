// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class UserReqCard extends StatelessWidget {
  UserReqCard({required this.ptitle,required this.pstitle,this.picture,this.picture1});
  String ptitle;
  String pstitle;
  Image? picture;
  ImageProvider? picture1;
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
            buttonBar: GFButtonBar(
              children: <Widget>[
                
                GFIconButton(
                 
                    onPressed: (){},
                    shape:GFIconButtonShape.circle,
                    icon: Icon(Icons.download),
                ),

                GFIconButton(
                  color: Color.fromARGB(255, 5, 49, 116),
                    onPressed: (){},
                    shape:GFIconButtonShape.circle,
                    icon: Icon(Icons.check),
                ),
                GFIconButton(
                  color: Color.fromARGB(255, 138, 17, 33),
                    onPressed: (){},
                    shape:GFIconButtonShape.circle,
                    icon: Icon(Icons.close),
                ),
                
              ],
            ),

    );
  }
}