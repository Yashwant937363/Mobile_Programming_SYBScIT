import 'package:flutter/material.dart';

class Strong extends StatefulWidget{
  @override
  _StrongState createState() => _StrongState();
}

class _StrongState extends State<Strong>{
  TextEditingController n = TextEditingController();
  var ans = '';
  var len;
  num digit=0,n1=0,str=0;
  factorial(num digit) {
    int fact = 1;
    for(int i=1 ; i<=digit ; i++){
      fact *= i;
    }
    return fact;
  }
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
                    str = 0;
                    n1 = int.parse(n.text);
                    len = n.text.toString().length;
                    if(n.text.isEmpty) {
                      ans = "Please Enter Number";
                    } else {
                      while(n1>0)
                      {
                        digit = n1%10;
                        str += factorial(digit);
                        n1 = n1 ~/ 10;
                      }
                      if (str==num.parse(n.text)) {
                        ans = "${n.text} is Strong Number";
                      }else {
                        ans = "${n.text} is not Strong Number";
                      }
                    }
                  });
                },
                child: Text('Strong',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}