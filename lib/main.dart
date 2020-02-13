import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:identifier_app/image_list.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

ImageList imageList = new ImageList();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Guess The Footballers"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RecognizerApp(),
          ),
        ),
      ),
    );
  }
}

class RecognizerApp extends StatefulWidget {
  @override
  _RecognizerAppState createState() => _RecognizerAppState();
}

class _RecognizerAppState extends State<RecognizerApp> {
  int totalQuestion = imageList.getTotalQnsNum();
  int totalScore = 0;
  void displayResult() {
    setState(() {
      Alert(
        context: context,
        title: "Final Score",
        desc: "$totalScore",
        buttons: [
          DialogButton(
            child: Text(
              "Play Again",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ).show();
      imageList.questionReset();
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 50.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Score",
                          style: TextStyle(
                              fontSize: 25.0, color: Colors.blueGrey[500]),
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Container(
                        child: Text(
                          "$totalScore/$totalQuestion",
                          style:
                              TextStyle(fontSize: 40.0, color: Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        Center(
          child: Container(
            height: 300.0,
            child: Image.asset(
              imageList.getNextImage(),
            ),
          ),
        ),
        Container(
          height: 210.0,
          width: 380.0,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (imageList
                              .checkAnswer(imageList.getOptions()[0])) {
                            totalScore++;
                          }
                          if (imageList.noNextQns()) {
                            displayResult();
                          } else {
                            imageList.nextQns();
                          }
                        });
                      },
                      splashColor: Colors.grey,
                      color: Colors.green,
                      child: Text(imageList.getOptions()[0]),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (imageList
                              .checkAnswer(imageList.getOptions()[1])) {
                            totalScore++;
                          }
                          if (imageList.noNextQns()) {
                            displayResult();
                          } else {
                            imageList.nextQns();
                          }
                        });
                      },
                      splashColor: Colors.grey,
                      color: Colors.green,
                      child: Text(imageList.getOptions()[1]),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (imageList
                              .checkAnswer(imageList.getOptions()[2])) {
                            totalScore++;
                          }
                          if (imageList.noNextQns()) {
                            displayResult();
                          } else {
                            imageList.nextQns();
                          }
                        });
                      },
                      splashColor: Colors.grey,
                      color: Colors.green,
                      child: Text(imageList.getOptions()[2]),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (imageList
                              .checkAnswer(imageList.getOptions()[3])) {
                            totalScore++;
                          }
                          if (imageList.noNextQns()) {
                            displayResult();
                          } else {
                            imageList.nextQns();
                          }
                        });
                      },
                      splashColor: Colors.grey,
                      color: Colors.green,
                      child: Text(imageList.getOptions()[3]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
