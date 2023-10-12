import 'package:flutter/material.dart';

class Factorial extends StatefulWidget{
  @override
  _FactorialState createState() => _FactorialState();
}

class _FactorialState extends State<Factorial>{
  TextEditingController n = TextEditingController();
  var ans = '';
  int fact=1,num=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Factorial'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: n,
              onChanged: (value) {
                setState(() {
                  ans='';
                });
              },
              decoration: InputDecoration(
                labelText: "Enter a Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$ans",style: TextStyle(fontSize: 20),),
          ),
          Center(
            child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    fact = 1;
                    num = int.parse(n.text);
                    if(n.text.isEmpty) {
                      ans = "Please Enter Number";
                    } else {
                      for(int i=1 ; i<=num ; i++) {
                        fact *= i;
                      }
                      ans = "Factorial of ${n.text} is $fact";
                    }
                  });
                },
                child: Text('Factorial',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}