import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Controller c = Get.put(Controller());

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
                    child: Obx(
                      () => Text(
                        c.value.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 100),
                        textAlign: TextAlign.right,
                        textScaleFactor: 1.5,
                      ),
                    )
                    //Text(

                    //)
                    ),
                Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                              "AC",
                              Colors.grey[300],
                              Colors.black,
                            ),
                            customButton(
                              "+/-",
                              Colors.grey[300],
                              Colors.black,
                            ),
                            customButton(
                              "%",
                              Colors.grey[300],
                              Colors.black,
                            ),
                            customButton(
                              "/",
                              Colors.orange[300],
                              Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                              "7",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "8",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "9",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "X",
                              Colors.orange[300],
                              Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                              "4",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "5",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "6",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "-",
                              Colors.orange[300],
                              Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                              "1",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "2",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "3",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "+",
                              Colors.orange[300],
                              Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customButton(
                              "0",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              ",",
                              Colors.grey[900],
                              Colors.white,
                            ),
                            customButton(
                              "=",
                              Colors.orange[300],
                              Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            )));
  }

  Widget customButton(text, backgroundColor, textColor) {
    return RawMaterialButton(
      onPressed: () {
        print(text);
        c.value.value = text;
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
