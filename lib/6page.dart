import 'package:flutter/material.dart';
import 'package:toeic_test/1page.dart';
import 'package:toeic_test/3page.dart';
import 'package:toeic_test/5page.dart';
import 'package:toeic_test/menu.dart';


class SixthPage extends StatelessWidget {
  SixthPage(this.name);
  final String name;

  void selectAnswer(String selectedAnswer) {
   
  }

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text('Q.5'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please leave the door _________ till my mum comes back home.',
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
                  selectAnswer('opening');
                  print('opening');
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
                  child: Text('opening',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  ),
                ),
                 OutlinedButton(onPressed: (){
                   selectAnswer('to open');
                   //  myHand = '✌️';
                   print('to open');
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
                  child: Text('to open',
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
                       MaterialPageRoute(builder: (context) => MenuPage(nameText)),
                    );
                  selectAnswer('open');
                  print('open');
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
                  child: Text('open',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
                ),
                 OutlinedButton(onPressed: (){
                   selectAnswer('opened');
                   //  myHand = '✌️';
                    print('opened');
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
                  child: Text('opened',
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