import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sybscit_semiii/components/styles/styles.dart';

class RandomImages extends StatefulWidget {
  @override
  _RandomImagesState createState() => _RandomImagesState();
}

class _RandomImagesState extends State<RandomImages> {
  var path = './assets/images/img1.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RandomImages'),),
      body: Center(
        child: Column(
          children: [
            Image.asset('$path',width: 200.0,height: 200.0,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    int random = (Random().nextInt(6))+1;
                    path= './assets/images/img'+(random.toString())+'.jpg';
                  });
                },
                child: Text('Click Here',style: headingh4(),)
            )
          ],
        ),
      ),
    );
  }
}