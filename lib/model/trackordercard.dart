import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TrackCard extends StatelessWidget {
  TrackCard({required this.ptitle,required this.pstitle,this.picture,this.picture1,required this.contents});
  String ptitle;
  String pstitle;
  Image? picture;
  Widget contents;
  ImageProvider? picture1;
  @override
  Widget build(BuildContext context) {
    return GFCard(
      boxFit: BoxFit.cover,
            titlePosition: GFPosition.start,
            image: picture,
            showImage: true,
            content: contents,
            title:  GFListTile(
              
              
              
              titleText: ptitle,
              subTitleText: pstitle,
              
            ),
            buttonBar: GFButtonBar(
              children: <Widget>[
                
                
                GFButton(
                  color: Color.fromARGB(255, 3, 42, 100),
                  onPressed: (){},
                  text: "TRACK RIDER",
                ),
                
              ],
            ),

    );
  }
}