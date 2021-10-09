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
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _score = 0;
  var _higestScore = 0;
  var _imageName = 0;
  var _index1 = 0;
  var _index2 = 0;
  bool _isGameOver = false;
  final _random = Random.secure();

  final _imageList = <String>[
    'img/bean.PNG',
    'img/bird.PNG',
    'img/boy.PNG',
    'img/girl.PNG',
    'img/jerry.PNG',
    'img/miky.PNG',
  ];
  List names = ['Mr.bean', 'Bird', 'Boy', 'Girl', 'Jerry', 'Mikey'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Score :$_score",
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            "Higest Score :$_higestScore",
            style: TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                _imageList[_index1],
                width: 220,
                height: 220,
              ),
              // Image.asset(_imageList[_index2],width: 120,height: 120,),
            ],
          ),
          Text(
            "Image Name :$_imageName",
            style: TextStyle(fontSize: 30),
          ),
          if (_isGameOver)
            const Text(
              "GAME OVER",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ElevatedButton(onPressed: _roll, child: Text("Roll")),
          // SizedBox(
          //   height: 50,
          //   child: Expanded(child: ListView(
          //
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(onPressed: checkImg(0), child: Text("Mr.Bean"),),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(onPressed: checkImg(1), child: Text("Bird")),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(onPressed: checkImg(2), child: Text("Boy")),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(onPressed: checkImg(3), child: Text("Girl")),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(onPressed: checkImg(4), child: Text("Jerry")),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(onPressed: checkImg(5), child: Text("Mikey")),
          //       )
          //     ],
          //   )),
          // )
          Container(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context, index) {

                  return InkWell(
                    onTap: (){
                      if(names[index]=='Mr.bean'){checkImg(0);}
                      if(names[index]=='Bird'){checkImg(1);}
                      if(names[index]=='Boy'){checkImg(2);}
                      if(names[index]=='Girl'){checkImg(3);}
                      if(names[index]=='Jerry'){checkImg(4);}
                      if(names[index]=='Mikey'){checkImg(5);}
                    },
                    child: Container(

                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Center(
                          child: Text(
                            names[index],
                            style: TextStyle(fontSize: 20,color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  void _roll() {
    setState(() {
      _index1 = _random.nextInt(6);
      _index2 = _random.nextInt(6);
      //
    });
  }

  checkImg(int i) {
    int b=i;
    if(b==0)
      {
       if(_index1==0)
       {
         print('PERFECT');
       }
       else
         {
           print('ERROR');
         }
      }
    if(b==1)
    {
      if(_index1==1)
      {
        print('PERFECT');
      }
      else
      {
        print('ERROR');
      }
    }
    if(b==2)
    {
      if(_index1==2)
      {
        print('PERFECT');
      }
      else
      {
        print('ERROR');
      }
    }
    if(b==3)
    {
      if(_index1==3)
      {
        print('PERFECT');
      }
      else
      {
        print('ERROR');
      }
    }
    if(b==4)
    {
      if(_index1==4)
      {
        print('PERFECT');
      }
      else
      {
        print('ERROR');
      }
    }
    if(b==5)
    {
      if(_index1==5)
      {
        print('PERFECT');
      }
      else
      {
        print('ERROR');
      }
    }
  }
}
