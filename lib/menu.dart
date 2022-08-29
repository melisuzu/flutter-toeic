import 'dart:html';

import 'package:flutter/material.dart';
import 'package:toeic_test/1page.dart';
import 'package:toeic_test/3page.dart';
import 'package:toeic_test/5page.dart';



class MenuPage extends StatelessWidget {
  MenuPage(this.name);
  final String name;

  void selectAnswer(String selectedAnswer) {
   
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SizedBox(
              height: 50,
            ), 
            Text('Result:',
                style: TextStyle(
                  fontSize: 50,
                ),
                ),
                SizedBox(
              height: 250,
            ), 
          
               OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => FirstPage()),
                    );
                  },
                  child: const Text('Menu',
                   style: TextStyle(
                    fontSize: 64,
                    fontStyle: FontStyle.italic,
                  ),),
                  
                ),

              ],
            ),
             
        
        ),
    );
  }
}