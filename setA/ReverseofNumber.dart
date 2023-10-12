import 'package:flutter/material.dart';

class ReverseofNumber extends StatefulWidget{
  @override
  _ReverseofNumberState createState() => _ReverseofNumberState();
}

class _ReverseofNumberState extends State<ReverseofNumber>{
  TextEditingController n = TextEditingController();
  num digit=0,sum=0;
  var n1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reverse of Number'),),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ReverseofNumberResultPage(0, 0)));
                  }else{
                    n1 = n.text.toString().split('').reversed.join('');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ReverseofNumberResultPage(int.parse(n.text), n1)));
                  }
                },
                child: Text('Reverse of Number',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}

class ReverseofNumberResultPage extends StatelessWidget{
  var num,rev;
  var ans = '';
  ReverseofNumberResultPage(this.num,this.rev);
  setupFunction(){
    if(num == 0){
      ans = 'Please Enter a Number';
    }
    else{
      ans = 'Reverse of  $num is $rev';
    }
  }

  @override
  Widget build(BuildContext context) {
    setupFunction();
    return Scaffold(
      appBar: AppBar(title: Text('Reverse of Number Result'),),
      body: Center(child: Text('$ans',style: TextStyle(fontSize: 20),)),
    );
  }
}