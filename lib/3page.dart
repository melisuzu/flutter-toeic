import 'package:flutter/material.dart';
import 'package:toeic_test/1page.dart';
import 'package:toeic_test/3page.dart';
import 'package:toeic_test/4page.dart';


class ThirdPage extends StatelessWidget {
  ThirdPage(this.name);
  final String name;

  //  int index = 0;

  void selectAnswer(String selectedAnswer) {
   
  }

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text('Q.2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The company has decided to hold the annual picmic at a _________ date.',
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
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => ForthPage(nameText)),
                    );
                  selectAnswer('later');
                  print('later');
                  // setState(() {});
                },
                  style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) 
                     return Color.fromARGB(255, 40, 197, 121); //<-<-- SEE HERE
                     return null; // Defer to the widget's default.
                  },
                 ),
                ),
                  child: Text('later',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  ),
                ),
                 OutlinedButton(onPressed: (){
                   selectAnswer('greater');
                   //  myHand = '✌️';
                   print('greater');
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
                  child: Text('greater',
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
                  selectAnswer('stronger');
                  print('stronger');
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
                  child: Text('stronger',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
                ),
                 OutlinedButton(onPressed: (){
                   selectAnswer('wider');
                   //  myHand = '✌️';
                    print('wider');
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
                  child: Text('wider',
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