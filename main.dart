import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceleftNumber=1;
  int dicerightNumber=1;
  void change(){
    diceleftNumber=Random().nextInt(6)+1;
    dicerightNumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(

            child: FlatButton(
              onPressed: (){
                setState(() {
                 change();
                  print('hello$diceleftNumber');
                });

              },
              child: Image(
                image: AssetImage('images/dice$diceleftNumber.png'),
              ),

            ),
          ),
          Expanded(

            child: FlatButton(
              onPressed:(){
               setState(() {
                 change();
                 print('number=$dicerightNumber');
               });
              },
              child: Image(
                image: AssetImage('images/dice$dicerightNumber.png'),),
            ),
          ),


        ],
      ),
    );
  }
}


