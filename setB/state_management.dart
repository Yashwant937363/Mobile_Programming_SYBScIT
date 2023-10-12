import 'package:flutter/material.dart';
import 'package:sybscit_semiii/components/styles/styles.dart';

class State_Management extends StatefulWidget {
  @override
  _State_ManagementState createState() => _State_ManagementState();
}

class _State_ManagementState extends State<State_Management> {
  TextEditingController name = TextEditingController();
  TextEditingController rno = TextEditingController();
  String div = 'A';
  var sub = [
    'OOPs',
    'FMPMC',
    'WAD',
    'NM',
    'GIT',
    'OOPs Practical',
    'FMPMC Practical',
    'WAD Practical',
    'NM Practical',
    'PL/SQL Practical'
  ];
  var result = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  int th = 0, pr = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10.0,left: 5.0,right: 5.0),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'Enter Your Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0,left: 5.0,right: 5.0),
            child: TextField(
              controller: rno,
              decoration: InputDecoration(
                labelText: 'Enter Your Roll No',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Division :'),
                Flexible(
                  child: RadioListTile(
                    value: 'A',
                    title: Text('A'),
                    groupValue: div,
                    onChanged: (value) {
                      setState(() {
                        if (div == 'A')
                          div = 'B';
                        else
                          div = 'A';
                      });
                    },
                  ),
                ),
                Flexible(
                  child: RadioListTile(
                    value: 'B',
                    title: Text('B'),
                    groupValue: div,
                    onChanged: (value) {
                      setState(() {
                        if (div == 'A')
                          div = 'B';
                        else
                          div = 'A';
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Semester II',
              style: headingh4(),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      value: result[index],
                      onChanged: (value) {
                        setState(() {
                          result[index] = !result[index];
                        });
                        if (value == true)
                          th++;
                        else
                          th--;
                      },
                      title: Text('${sub[index]}'),
                    );
                  },
                  itemCount: 5,
                ),
              ),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    index += 5;
                    return CheckboxListTile(
                      value: result[index],
                      onChanged: (value) {
                        setState(() {
                          result[index] = !result[index];
                        });
                        if (value == true)
                          pr++;
                        else
                          pr--;
                      },
                      title: Text('${sub[index]}'),
                    );
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
          Text('Number of Theory : $th',style: headingh4(),),
          Text('Number of Praticals : $pr',style: headingh4(),),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultPage(name.text,rno.text,div,'Pass')));
                },
                child: Text(
                  'Submit',
                  style: headingh4(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  var th,pr,div,rno,name,result;
  ResultPage(this.name,this.rno,this.div,this.result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: ListView(
          children: [
            Row(
              children: [
                Text('Name : ', style: headingh4()),
                Text(
                  'Yashwant',style: normalText(),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Roll No : ',
                  style: headingh4(),
                ),
                Text('34',style: normalText(),)
              ],
            ),
            Row(
              children: [
                Text(
                  'Division : ',
                  style: headingh4(),
                ),
                Text('A',style: normalText(),)
              ],
            ),Row(
              children: [
                Text(
                  'Result : ',
                  style: headingh4(),
                ),
                Text('Pass',style: normalText(),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

