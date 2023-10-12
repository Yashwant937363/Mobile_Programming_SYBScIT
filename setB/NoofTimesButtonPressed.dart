import 'package:flutter/material.dart';
import 'package:sybscit_semiii/components/styles/styles.dart';

class NoofTimesButtonPressed extends StatefulWidget{
  @override
  _NoofTimesButtonPressedState createState() => _NoofTimesButtonPressedState();
}

class _NoofTimesButtonPressedState extends State<NoofTimesButtonPressed>{
  int press=0,longpress=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('No of Times Button Pressed'),),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Click on Button : $press',style: headingh4(),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Long Pressed on Button : $longpress',style: headingh4(),),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      press++;
                    });
                  } ,
                  onLongPress: () {
                    setState(() {
                      longpress++;
                    });
                  },
                  child: Text('Click Here'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}