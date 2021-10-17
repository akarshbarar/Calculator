import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var inputText = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.black,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    flex: 3,
                    child: Text(
                      inputText.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 100),
                      textAlign: TextAlign.right,
                      textScaleFactor: 1.5,
                    )),
                Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton("AC", Colors.grey[300], Colors.black,
                                inputText),
                            customButton("+/-", Colors.grey[300], Colors.black,
                                inputText),
                            customButton(
                                "%", Colors.grey[300], Colors.black, inputText),
                            customButton("/", Colors.orange[300], Colors.white,
                                inputText),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                                "7", Colors.grey[900], Colors.white, inputText),
                            customButton(
                                "8", Colors.grey[900], Colors.white, inputText),
                            customButton(
                                "9", Colors.grey[900], Colors.white, inputText),
                            customButton("X", Colors.orange[300], Colors.white,
                                inputText),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                                "4", Colors.grey[900], Colors.white, inputText),
                            customButton(
                                "5", Colors.grey[900], Colors.white, inputText),
                            customButton(
                                "6", Colors.grey[900], Colors.white, inputText),
                            customButton("-", Colors.orange[300], Colors.white,
                                inputText),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                                "1", Colors.grey[900], Colors.white, inputText),
                            customButton(
                                "2", Colors.grey[900], Colors.white, inputText),
                            customButton(
                                "3", Colors.grey[900], Colors.white, inputText),
                            customButton("+", Colors.orange[300], Colors.white,
                                inputText),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                                "0", Colors.grey[900], Colors.white, inputText),
                            customButton(
                                ",", Colors.grey[900], Colors.white, inputText),
                            customButton("=", Colors.orange[300], Colors.white,
                                inputText),
                          ],
                        ),
                      ],
                    ))
              ],
            )));
  }

  Widget customButton(text, backgroundColor, textColor, inputText) {
    return RawMaterialButton(
      onPressed: () {
        print(text);
        setState(() {
          inputText = text;
        });
      },
      elevation: 0,
      fillColor: backgroundColor,
      child: Text(text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: textColor,
          )),
      padding: EdgeInsets.all(25),
      shape: CircleBorder(),
    );
  }
}
