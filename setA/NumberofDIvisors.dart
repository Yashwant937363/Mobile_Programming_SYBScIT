import 'package:flutter/material.dart';

class NoofDivisors extends StatefulWidget{
  @override
  _NoofDivisorsState createState() => _NoofDivisorsState();
}

class _NoofDivisorsState extends State<NoofDivisors>{
  TextEditingController n = TextEditingController();
  var num;
  int divisors = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NoofDivisors'),),
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
                  setState(() {
                    divisors = 0;
                    num = int.parse(n.text);
                    if(n.text.isEmpty) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> NoofDivisorsResultPage( 0, divisors)));
                    }
                    else {
                      for(int i=1 ; i<=num ; i++) {
                        if(num%i==0)
                          divisors++;
                      }
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> NoofDivisorsResultPage(num, divisors)));
                    }
                  });
                },
                child: Text('No of Divisors',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}

class NoofDivisorsResultPage extends StatelessWidget{
  var num,divisors;
  var ans = '';
  NoofDivisorsResultPage(this.num,this.divisors);
  setupFunction(){
    if(num == 0){
      ans = 'Please Enter a Number';
    }
    else{
      ans = '$num no of Divisors is $divisors';
    }
  }

  @override
  Widget build(BuildContext context) {
    setupFunction();
    return Scaffold(
      appBar: AppBar(title: Text('No of Divisors Result'),),
      body: Center(child: Text('$ans',style: TextStyle(fontSize: 20),)),
    );
  }
}