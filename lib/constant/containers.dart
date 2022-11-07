import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.colour, this.cardchild, this.onpress});
  Color? colour;
  Widget? cardchild;
  Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        
      decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 35, 30, 107)),
      borderRadius: BorderRadius.circular(10)),
      width: 117,
      height: 50,
      child: cardchild
      ),
    );
  }
}

                    