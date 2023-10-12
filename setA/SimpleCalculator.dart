import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget{
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator>{
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  var ans = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Calculator'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: n1,
              onChanged: (value) {
                setState(() {
                  ans='';
                });
              },
              decoration: InputDecoration(
                labelText: "Enter First Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: n2,
              onChanged: (value) {
                setState(() {
                  ans='';
                });
              },
              decoration: InputDecoration(
                labelText: "Enter Second Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$ans"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      if(n1.text == '' && n2.text == '')
                        ans = "Please Enter Numbers";
                      else {
                        ans = "Addition of ${n1.text} and ${n2.text} is ${(int.parse(n1.text))+(int.parse(n2.text))}";
                      }
                    });
                  },
                  child: Text('+',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      if(n1.text.isEmpty && n2.text.isEmpty)
                        ans = "Please Enter Numbers";
                      else {
                        ans = "Subtraction of ${n1.text} and ${n2.text} is ${(int.parse(n1.text))-(int.parse(n2.text))}";
                      }
                    });
                  },
                  child: Text('-',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      if(n1.text == '' && n2.text == '')
                        ans = "Please Enter Numbers";
                      else {
                        ans = "Multiplication of ${n1.text} and ${n2.text} is ${(int.parse(n1.text))*(int.parse(n2.text))}";
                      }
                    });
                  },
                  child: Text('*',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      if(n1.text == '' && n2.text == '')
                        ans = "Please Enter Numbers";
                      else {
                        ans = "Division of ${n1.text} and ${n2.text} is ${(int.parse(n1.text))/(int.parse(n2.text))}";
                      }
                    });
                  },
                  child: Text('/',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ),
            ],
          )
        ],
      ),
    );
  }
}
