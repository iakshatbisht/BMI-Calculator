import 'package:bmi/details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData.dark(
).copyWith(
primaryColor: Color(0xff0A0E21),
accentColor: Colors.purple,
scaffoldBackgroundColor: Color(0xff0A0E21),
),
home: Bmi()));

class Bmi extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  Color inactiveColor1 = Color(0xff111328);
  Color inactiveColor2 = Color(0xff111328);
  Color inactiveColor3 = Color(0xff111328);
  Color inactiveColor4 = Color(0xff111328);
  Color inactiveColor5 = Color(0xff111328);

  Color activeColor1 = Color(0xff1D1E33);
  Color activeColor2 = Color(0xff1D1E33);
  Color activeColor3 = Color(0xff1D1E33);
  Color activeColor4 = Color(0xff1D1E33);
  Color activeColor5 = Color(0xff1D1E33);

  int height = 150;
  int weight = 30;
  int age = 0;
  String gender = null;
  Color col;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    col = Color(0xff404040);
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    if (height != 120 && weight != 30 && age != 0)
      col = Colors.pinkAccent;
    else
      col = Color(0xff404040);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (inactiveColor1 == Color(0xff111328)) {
                          inactiveColor1 = activeColor1;
                          inactiveColor2 = Color(0xff111328);
                          gender = 'male';
                        }
                        else {
                          gender = null;
                          inactiveColor1 = Color(0xff111328);
                        }
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: inactiveColor1,
                      ),
                      height: 200.0,
                      width: 170.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.mars, size: 70.0),
                          SizedBox(height: 15.0),
                          Text('MALE', style: TextStyle(
                            fontSize: 18.0, color: Color(0xff8D8E98),
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (inactiveColor2 == Color(0xff111328)) {
                          gender = 'female';
                          inactiveColor2 = activeColor2;
                          inactiveColor1 = Color(0xff111328);
                        }
                        else {
                          gender = null;
                          inactiveColor2 = Color(0xff111328);
                        }
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: inactiveColor2),
                      height: 200.0,
                      width: 170.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.venus, size: 70.0),
                          SizedBox(height: 15.0,),
                          Text('FEMALE', style: TextStyle(
                              fontSize: 18.0, color: Color(0xff8D8E98))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: inactiveColor3,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',
                    style: TextStyle(fontSize: 18.0, color: Color(0xff8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text('$height', style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(width: 10.0,),
                      Text('cm',
                          style: TextStyle(fontSize: 20.0)
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x40EB1555),
                        thumbColor: Color(0xFFEB1555),
                        thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30.0),
                      ),
                      child: Slider(
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                            inactiveColor3 = activeColor3;
                          });
                        },
                        min: 53.0,
                        max: 280.0,
                        value: height.toDouble(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: inactiveColor4,
                    ),
                    height: 200.0,
                    width: 170.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT',
                          style: TextStyle(fontSize: 18.0, color: Color(
                              0xff8D8E98),
                          ),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialButton(
                              shape: CircleBorder(),
                              elevation: 6.0,
                              constraints: BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              fillColor: Color(0xff4c4f5e),
                              child: Icon(
                                  FontAwesomeIcons.minus, color: Colors.white,
                                  size: 20),
                              onPressed: () {
                                setState(() {
                                  if (weight != 30) {
                                    weight--;
                                    inactiveColor4 = activeColor4;
                                  }
                                  else
                                    inactiveColor4 = Color(0xff111328);
                                });
                              },
                            ),
                            SizedBox(width: 15),
                            RawMaterialButton(
                              shape: CircleBorder(),
                              elevation: 6.0,
                              constraints: BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              fillColor: Color(0xff4c4f5e),
                              child: Icon(
                                  FontAwesomeIcons.plus, color: Colors.white,
                                  size: 20),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                  inactiveColor4 = activeColor4;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: inactiveColor5,
                    ),
                    height: 200.0,
                    width: 170.0,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE',
                            style: TextStyle(fontSize: 18.0, color: Color(
                                0xff8D8E98),
                            ),
                          ),
                          Text('$age', style: TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                shape: CircleBorder(),
                                elevation: 6.0,
                                constraints: BoxConstraints.tightFor(
                                  width: 50.0,
                                  height: 50.0,
                                ),
                                fillColor: Color(0xff4c4f5e),
                                child: Icon(
                                  FontAwesomeIcons.minus, color: Colors.white,
                                  size: 20,),
                                onPressed: () {
                                  setState(() {
                                    if (age != 0) {
                                      age--;
                                      inactiveColor5 = activeColor5;
                                    }
                                    else
                                      inactiveColor5 = Color(0xff111328);
                                  });
                                },
                              ),
                              SizedBox(width: 15,),
                              RawMaterialButton(
                                shape: CircleBorder(),
                                elevation: 6.0,
                                constraints: BoxConstraints.tightFor(
                                  width: 50.0,
                                  height: 50.0,
                                ),
                                fillColor: Color(0xff4c4f5e),
                                child: Icon(
                                  FontAwesomeIcons.plus, color: Colors.white,
                                  size: 20,),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                    inactiveColor5 = activeColor5;
                                  });
                                },
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              color: col,
              margin: EdgeInsets.only(top: 10.0,),
              width: double.infinity,
              height: 70.0,
              child: Center(
                child: Text('CALCULATE', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,),
                ),
              ),
            ),
            onTap: () {
              if (age == 0 && gender == null)
                showDialogue("Please enter some age and gender");
              else if (age == 0) {
                showDialogue("Please enter some age value");
              } else if (gender == null) {
                showDialogue("Please select any gender");
              }
              else {
                double bmi = (weight * 10000) / (height * height);
                String type;
                String sentence;
                if (bmi < 18.5) {
                  type = " Underweight ";
                  sentence =
                  " Your BMI result is low. You need to eat more........ ";
                }
                else if (bmi > 18.5 && bmi <= 24.9) {
                  type = " Normal ";
                  sentence =
                  " You are healthy and lie in fit category........ ";
                }
                else if (bmi >= 25 && bmi < 29.9) {
                  type = " Overweight ";
                  sentence =
                  " You need to burn more calories or reduce your calorie intake........ ";
                }
                else if (bmi >= 30) {
                  type = " Obese ";
                  sentence =
                  " Your life is at risk.take serious measures to live a healthy and long life........ ";
                }
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Details(bmi, type, sentence)));
              }
            },
          ),
        ],
      ),
    );
  }

  Widget showDialogue(String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xff404040),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            elevation: 10.0,
            title: Text("Incomplete Submission !", style: TextStyle(color: Colors.redAccent)),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  "Ok",
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}