import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;

  List questionList = [
    "1. In the Film 'OMG:Oh My God' Kanji\nBhai filed a case against whom for the\n     Damage of his shop due to an\n                 Earthquake?",
    "2. The International literacy day is Observed on?",
    "3.tamare jeyaa kelta che",
    "4.Who is national animal",
    "5.Who is natinal bird",
    "6.Who is fatest animal",
    "7.Who is prime minister of india",
    "8.Which is our natinal game",
    "9.Who is still man in india told",
    "10.In which currency gandhiji photo have in it",
  ];

  List answerList = ["Bhagwan","8th Sept","None of these","Tiger","Peacock","Cheetah","Narendra Modi","Hockey","Sardar Vallabhbhai patel","India"];

  List aList = ["Bharat Mata","8th Sept","1","Lion","Peacock","Tiger","Surya pandey","Cricket","gandhiji","Pakistan"];
  List bList = ["Parliament","20th Nov","2","Elephant","Cock","Leapord","Narendra Modi","Football","Sardar Vallabhbhai patel","India"];
  List cList = ["Mumbai City","2nd May","3","Tiger","Crow","Cheetah","Rahul Mehta","Hockey","Bhagat singh","Europe"];
  List dList = ["Bhagwan","22nd Sept","None of these","All of the above","Pigeon","Lion","Soniya Gandhii","Hollyball","lal Badur sarstri","Russia"];

  List useranswerList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          backgroundColor: Colors.deepPurpleAccent.shade700,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.deepPurpleAccent.shade100,
                alignment: Alignment.center,
                child: Text(
                  "${questionList[i]}",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${aList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i==10)
                            {
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 250,
                        color: Colors.deepPurpleAccent.shade700,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "A.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${aList[i]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${bList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 250,
                        color: Colors.deepPurpleAccent.shade700,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "B.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${bList[i]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${cList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 250,
                        color: Colors.deepPurpleAccent.shade700,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "C.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${cList[i]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${dList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 250,
                        color: Colors.deepPurpleAccent.shade700,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "D.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${dList[i]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}