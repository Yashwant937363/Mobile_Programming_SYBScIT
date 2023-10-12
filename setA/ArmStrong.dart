import 'dart:math';

import 'package:flutter/material.dart';

class ArmStrong extends StatefulWidget{
  @override
  _ArmStrongState createState() => _ArmStrongState();
}

class _ArmStrongState extends State<ArmStrong>{
  TextEditingController n = TextEditingController();
  var ans = '';
  var len;
  num digit=0,n1=0,arm=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ArmStrong'),),
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
                    arm = 0;
                    n1 = int.parse(n.text);
                    len = n.text.toString().length;
                    if(n.text.isEmpty) {
                      ans = "Please Enter Number";
                    } else {
                      while(n1>0)
                      {
                        digit = n1%10;
                        arm += pow(digit, len);
                        n1 = n1 ~/ 10;
                      }
                      if (arm==num.parse(n.text)) {
                        ans = "${n.text} is Armstrong Number";
                      }else {
                        ans = "${n.text} is not Armstrong Number";
                      }
                    }
                  });
                },
                child: Text('Armstrong',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}