import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Details extends StatelessWidget {
  double bmi;
  String type;
  String sentence;
  Details(this.bmi, this.type, this.sentence);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result', style: TextStyle(fontSize: 40.0/*50 for others 40 for one plus*/, fontWeight: FontWeight.bold),),
          )),
          Expanded(
            flex: 5,
            child: Container(
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xff1D1E33),
    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(' $type ', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff24d876),fontSize: 30,fontWeight: FontWeight.bold),),
                  Text(bmi.toStringAsFixed(2), textAlign: TextAlign.center,style: TextStyle(fontSize: 95.0/*100 for others 95 for one plus*/,fontWeight: FontWeight.bold),),
                  Text(' $sentence ', textAlign: TextAlign.center, style: TextStyle(fontSize: 22),),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              color: Colors.pinkAccent,
              margin: EdgeInsets.only(top: 10.0,),
              width: double.infinity,
              height: 70.0,
              child: Center(
                child: Text('RE-CALCULATE', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,),
                ),
              ),
            ),
            onTap: (){
              Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
