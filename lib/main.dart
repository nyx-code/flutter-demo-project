import 'package:demo_project/widgets/CustomContainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              width: 250,
              height: 250,
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Color(0xFF3D99FF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Hello"),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Align(alignment: Alignment.centerRight, child: Text("World")),
                  SizedBox(
                    height: 18,
                  ),
                  FlatButton(
                    onPressed: () {
                      print("Click");
                    },
                    child: Text("This is button"),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Text1",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text("Text2"),
                      Text("Text3"),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  CustomContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
