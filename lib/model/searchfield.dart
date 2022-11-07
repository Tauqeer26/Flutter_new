import 'package:flutter/material.dart';

class Searchfield extends StatelessWidget {
  const Searchfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
          decoration: 
          InputDecoration(
              // icon: const Icon(
              //   Icons.search,
              //   color: Color(0xFF0A66C3),
              // ),
          focusedBorder: 
          OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Color.fromARGB(255, 75, 68, 147),
                  ),
                ),
              labelText: "Search bar",
              enabledBorder: InputBorder.none,
              
              labelStyle: const TextStyle(color: Colors.grey)),
              );
  }
}