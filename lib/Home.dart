import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(),
                    )),
                Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton("AC", Colors.grey[300]),
                            customButton("+/-", Colors.grey[300]),
                            customButton("%", Colors.grey[300]),
                            customButton("/", Colors.orange[400]),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton("7", Colors.grey[300]),
                            customButton("8", Colors.grey[300]),
                            customButton("9", Colors.grey[300]),
                            customButton("X", Colors.orange[300]),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton("4", Colors.grey[300]),
                            customButton("5", Colors.grey[300]),
                            customButton("6", Colors.grey[300]),
                            customButton("-", Colors.orange[300]),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton("1", Colors.grey[300]),
                            customButton("2", Colors.grey[300]),
                            customButton("3", Colors.grey[300]),
                            customButton("+", Colors.orange[300]),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton("0", Colors.grey[300]),
                            customButton(",", Colors.grey[300]),
                            customButton("=", Colors.orange[300]),
                          ],
                        ),
                      ],
                    ))
              ],
            )));
  }

  Widget customButton(text, color) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 0,
      fillColor: color,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      padding: EdgeInsets.all(25),
      shape: CircleBorder(),
    );
  }
}
