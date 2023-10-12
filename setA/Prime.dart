import 'package:flutter/material.dart';

class Prime extends StatefulWidget{
  @override
  _PrimeState createState() => _PrimeState();
}

class _PrimeState extends State<Prime>{
  TextEditingController n = TextEditingController();
  var ans = '',num;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Prime'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: n,
              keyboardType: TextInputType.number,
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
                    flag = true;
                    num = int.parse(n.text);
                    if(n.text.isEmpty) {
                      ans = "Please Enter Number";
                    } else {
                      for(int i=2 ; i<num ; i++) {
                         if(num%i==0) {
                           flag = false ;
                           break;
                         }
                      }
                      if(flag) {
                        ans = "${n.text} is Prime Number";
                        n.text = '';
                      }
                      else {
                        ans = "${n.text} is not Prime Number";
                        n.text = '';
                      }
                    }
                  });
                },
                child: Text('Prime',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}