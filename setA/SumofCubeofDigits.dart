import 'dart:math';
import 'package:flutter/material.dart';

class SumofCubeofDigit extends StatefulWidget{
  @override
  _SumofCubeofDigitState createState() => _SumofCubeofDigitState();
}

class _SumofCubeofDigitState extends State<SumofCubeofDigit>{
  TextEditingController n = TextEditingController();
  num digit=0,n1=0,sum=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sum of Cube of Digits'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: n,
              decoration: InputDecoration(
                labelText: "Enter a Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: (){
                  if(n.text.isEmpty){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SumofCubeofDigitResultPage(0, 0)));
                  }else{
                    n1 = int.parse(n.text);
                    sum = 0;
                    while(n1 > 0){
                      digit = n1%10;
                      sum += pow(digit, 3);
                      n1 ~/= 10;
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SumofCubeofDigitResultPage(int.parse(n.text), sum)));
                  }
                },
                child: Text('Sum of Cube of Digits',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}

class SumofCubeofDigitResultPage extends StatelessWidget{
  var num,sum;
  var ans = '';
  SumofCubeofDigitResultPage(this.num,this.sum);
  setupFunction(){
    if(num == 0 && sum == 0){
      ans = 'Please Enter a Number';
    }
    else{
      print(sum);
      ans = 'Sum of Cube of $num Digits is $sum';
    }
  }

  @override
  Widget build(BuildContext context) {
    setupFunction();
    return Scaffold(
      appBar: AppBar(title: Text('Sum of Cude of DIgits Result'),),
      body: Center(child: Text('$ans',style: TextStyle(fontSize: 20),)),
    );
  }
}