import 'package:flutter/material.dart';

class ReverseofString extends StatefulWidget{
  @override
  _ReverseofStringState createState() => _ReverseofStringState();
}

class _ReverseofStringState extends State<ReverseofString>{
  TextEditingController n = TextEditingController();
  var n1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reverse of String'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: n,
              decoration: InputDecoration(
                labelText: "Enter a String",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ReverseofStringResultPage(0, 0)));
                  }else{
                    n1 = n.text.toString().split('').reversed.join('');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ReverseofStringResultPage(n.text, n1)));
                  }
                },
                child: Text('Reverse of String',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}

class ReverseofStringResultPage extends StatelessWidget{
  var num,rev;
  var ans = '';
  ReverseofStringResultPage(this.num,this.rev);
  setupFunction(){
    if(num == ''){
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
      appBar: AppBar(title: Text('Reverse of String Result'),),
      body: Center(child: Text('$ans',style: TextStyle(fontSize: 20),)),
    );
  }
}