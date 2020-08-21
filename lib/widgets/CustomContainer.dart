import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Text("This is container"),
          Text("This is container1"),
        ],
      ),
    );
  }
}
