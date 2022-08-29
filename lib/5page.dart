import 'package:flutter/material.dart';
import 'package:toeic_test/1page.dart';
import 'package:toeic_test/3page.dart';
import 'package:toeic_test/6page.dart';


class FifthPage extends StatelessWidget {
  FifthPage(this.name);
  final String name;

  void selectAnswer(String selectedAnswer) {
   
  }

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text('Q.4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The survey shows that the _________ of air pollution for residents is worse than expected.',
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
                       MaterialPageRoute(builder: (context) => SixthPage(nameText)),
                    );
                  selectAnswer('effect');
                  print('effect');
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
                  child: Text('effect',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  ),
                ),
                 OutlinedButton(onPressed: (){
                   selectAnswer('effective');
                   //  myHand = '✌️';
                   print('effective');
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
                  child: Text('effective',
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
                  selectAnswer('effects');
                  print('effects');
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
                  child: Text('effects',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
                ),
                 OutlinedButton(onPressed: (){
                   selectAnswer('effectively');
                   //  myHand = '✌️';
                    print('effectively');
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
                  child: Text('effectively',
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