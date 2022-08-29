import 'package:flutter/material.dart';
import 'package:toeic_test/1page.dart';
import 'package:toeic_test/3page.dart';
import 'package:toeic_test/5page.dart';


class ForthPage extends StatelessWidget {
  ForthPage(this.name);
  final String name;


  void selectAnswer(String selectedAnswer) {
   
  }

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text('Q.3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  
            Text('Ms. Ikeda was promoted to senior vice president _________ working for her previous employee.',
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
                  selectAnswer('during');
                  print('during');
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
                  child: Text('during',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  ),
                ),
                 OutlinedButton(onPressed: (){
                   selectAnswer('beside');
                   //  myHand = '✌️';
                   print('beside');
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
                  child: Text('beside',
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
                  selectAnswer('into');
                  print('into');
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
                  child: Text('into',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
                ),
                 OutlinedButton(onPressed: (){
                    Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => FifthPage(nameText)),
                    );
                   selectAnswer('while');
                   //  myHand = '✌️';
                    print('while');
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
                  child: Text('while',
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