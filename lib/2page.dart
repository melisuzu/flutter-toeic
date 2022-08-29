// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:toeic_test/1page.dart';
import 'package:toeic_test/3page.dart';


String nameText = '';



class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;

  //  int index = 0;
  //  int result = 0;


     void selectAnswer(String selectedAnswer) {

  }


  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text('Q.1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('I am glad we were able to work so _________ together.',
                style: TextStyle(
                  fontSize: 25,
                ),
                ),
                SizedBox(
              height: 250,
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(onPressed: (){
                  selectAnswer('closer');
                  print('closer');
                  // index ++;
                  // setState(() {});
                },
                  style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                    return Color.fromARGB(255, 236, 54, 54); //<-- SEE HERE
                     return null; // Defer to the widget's default.
                  },
                 ),
                ),
                  child: Text('closer',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  ),
                ),
                 OutlinedButton(onPressed: (){
                   selectAnswer('closest');
                   print('closest');
                  //  index ++;
                   // setState(() {});
                  },
                   style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                    return Color.fromARGB(255, 236, 54, 54); //<-- SEE HERE
                     return null; // Defer to the widget's default.
                  },
                 ),
                ),
                  child: Text('closest',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),    
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(onPressed: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => ThirdPage(nameText)),
                    );
                  selectAnswer('closely');
                  print('closely');
                  // setState(() {});
                 
                },
                  style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                    return Color.fromARGB(255, 40, 197, 121); //<-- SEE HERE
                     return null; // Defer to the widget's default.
                  },
                 ),
                ),
                  child: Text('closely',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
                ),
                 OutlinedButton(onPressed: (){
                  //  index ++;
                   selectAnswer('closeness');
                   //  myHand = '✌️';
                    print('closeness');
                   // setState(() {});
                  },
                   style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                    return Color.fromARGB(255, 236, 54, 54); //<-- SEE HERE
                     return null; // Defer to the widget's default.
                  },
                 ),
                ),
                  child: Text('closeness',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
                ),
              ],
            ),
             
          ],
        ),
      ),
    );
  }

  
}