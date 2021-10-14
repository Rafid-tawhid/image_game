import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "G-Game",
        ),
        centerTitle: true,
      ),
      body: HomePage(),
    ),
  ));
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _score=0;
  var _higestScore=0;
  var _sum=0;
  var _index1=0;
  var _index2=0;
  var _rand1=0;
  var _rand2=0;
  var _rand3=0;
  var a=0;
  var b=0;
  var c=0;
  var d=0;
  var _isGameOver=false;
  List<int> list=[];
  final _random=Random.secure();
  final _diceList=<String>[
    'img/nm1.JPG',
    'img/nm2.JPG',
    'img/nm3.JPG',
    'img/nm4.JPG',
    'img/nm5.JPG',
    'img/nm6.JPG',
    'img/nm7.JPG',
    'img/nm8.JPG',
    'img/nm9.JPG',

  ];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Higest Score :$_higestScore',style: TextStyle(fontSize: 30),),
            Text('Score :$_score',style: TextStyle(fontSize: 30),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(_diceList[_index1],height: 70,width: 70,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('img/plus.JPG',height: 60,width: 60,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(_diceList[_index2],height: 70,width: 70,),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Text('sum :$_sum',style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            if(_isGameOver)Text("G A M E  O V E R",style: TextStyle(fontSize: 30,color: Colors.red),),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(children: [
               Expanded(child:Container(
                 height: 35.0,

                 child: RaisedButton(
                   onPressed: () {checkRes(a);},
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(80.0)),
                   padding: EdgeInsets.all(0.0),
                   child: Ink(
                     decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                           begin: Alignment.centerLeft,
                           end: Alignment.centerRight,
                         ),
                         borderRadius: BorderRadius.circular(30.0)),
                     child: Container(
                       constraints:
                       BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                       alignment: Alignment.center,
                       child: Text(
                         "$a",
                         textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.white, fontSize: 15),
                       ),
                     ),
                   ),
                 ),
               ),),
               SizedBox(width: 8,),
               Expanded(child:Container(
                 height: 35.0,

                 child: RaisedButton(
                   onPressed: () {checkRes(b);},
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(80.0)),
                   padding: EdgeInsets.all(0.0),
                   child: Ink(
                     decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                           begin: Alignment.centerLeft,
                           end: Alignment.centerRight,
                         ),
                         borderRadius: BorderRadius.circular(30.0)),
                     child: Container(
                       constraints:
                       BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                       alignment: Alignment.center,
                       child: Text(
                         "$b",
                         textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.white, fontSize: 15),
                       ),
                     ),
                   ),
                 ),
               ),),


             ],),
           ), //buttns1,2

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(children: [
               Expanded(child:Container(
                 height: 35.0,

                 child: RaisedButton(
                   onPressed: () {checkRes(c);},
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(80.0)),
                   padding: EdgeInsets.all(0.0),
                   child: Ink(
                     decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                           begin: Alignment.centerLeft,
                           end: Alignment.centerRight,
                         ),
                         borderRadius: BorderRadius.circular(30.0)),
                     child: Container(
                       constraints:
                       BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                       alignment: Alignment.center,
                       child: Text(
                         "$c",
                         textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.white, fontSize: 15),
                       ),
                     ),
                   ),
                 ),
               ),),
               SizedBox(width: 8,),
               Expanded(child:Container(
                 height: 35.0,

                 child: RaisedButton(
                   onPressed: () {checkRes(d);},
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(80.0)),
                   padding: EdgeInsets.all(0.0),
                   child: Ink(
                     decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                           begin: Alignment.centerLeft,
                           end: Alignment.centerRight,
                         ),
                         borderRadius: BorderRadius.circular(30.0)),
                     child: Container(
                       constraints:
                       BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                       alignment: Alignment.center,
                       child: Text(
                         "$d",
                         textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.white, fontSize: 15),
                       ),
                     ),
                   ),
                 ),
               ),),
             ],),
           ),//buttns3,4
            ElevatedButton(onPressed:_rollTheDice, child: Text("Roll")),
          ],
        ),
      ),
    );
  }

  void _rollTheDice() {

    setState(() {
      _index1=_random.nextInt(9);
      _index2=_random.nextInt(9);
      _rand1=_random.nextInt(18);
      _rand2=_random.nextInt(18);
      _rand3=_random.nextInt(18);

      _sum = _index1 + _index2 + 2;
      // _score =_score +_index1 + _index2 + 2;

      suffle(_rand1,_rand2,_rand3,_sum);

    });

  }

  void suffle(int rand1, int rand2, int rand3, int sum) {

    list = [rand1, rand2, rand3,sum];
    list.shuffle();
    print(list);

    a=list[0];
    b=list[1];
    c=list[2];
    d=list[3];
    print("$a"+" ""$b"+" "+"$c"+" ""$d");


  }

  checkRes(int a) {
    print(a);
    int aa = a;
    if (aa == _sum) {
      _rollTheDice();
      _score++;
      
    }
    else {
      print("ERROR");

      final snackBar = SnackBar(content: Center(
        child: Column(
          children: [
            SizedBox(height: 250,),
            Center(
              child: Text("W R O N G   A N S W E R",
                style: TextStyle(fontSize: 25, color: Colors.red,),),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              snacks();
            }, child: Text("Play Again")),
          ],
        ),
      ),duration: Duration(seconds: 15),);

      ScaffoldMessenger.of(context).showSnackBar(snackBar);




    }
  }

  void snacks() {
    ScaffoldMessenger.of(context).clearSnackBars();
    _rollTheDice();
  }
}

