import 'package:flutter/material.dart';
import 'package:toeic_test/2page.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

String nameText = '';

class _FirstPageState extends State<FirstPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(''),
      ),
      body: Center(
            child: Column(
              children: [
                SizedBox(
              height: 100,
            ), 
                Text('TOEIC Part 5',
                style: TextStyle(
                  fontSize: 50,
                ),
                ),
              
                SizedBox(
              height: 300,
            ), 
                
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => SecondPage(nameText)),
                    );
                  },
                  child: const Text('Start',
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