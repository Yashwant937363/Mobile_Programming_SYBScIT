import 'package:flutter/material.dart';

class SumofDIgits extends StatefulWidget{
  @override
  _SumofDIgitsState createState() => _SumofDIgitsState();
}

class _SumofDIgitsState extends State<SumofDIgits>{
  TextEditingController n = TextEditingController();
  num digit=0,sum=0;
  var n1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sum of Digits'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: n,
              keyboardType: TextInputType.number,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SumofDIgitsResultPage(0, 0)));
                  }else{
                    sum=0;
                    n1 = n.text.toString().split('');
                    for(int i=0;i< (n.text.toString().length);i++)
                      sum += int.parse(n1[i]);
                    print(n1);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SumofDIgitsResultPage(n.text, sum)));

                  }
                },
                child: Text('Sum of Digits',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}

class SumofDIgitsResultPage extends StatelessWidget{
  var num,sum;
  var ans = '';
  SumofDIgitsResultPage(this.num,this.sum);
  setupFunction(){
    if(num == 0){
      ans = 'Please Enter a Number';
    }
    else{
      ans = 'Sum of $num is $sum';
    }
  }

  @override
  Widget build(BuildContext context) {
    setupFunction();
    return Scaffold(
      appBar: AppBar(title: Text('Sum of Digits Result'),),
      body: Center(child: Text('$ans',style: TextStyle(fontSize: 20),)),
    );
  }
}