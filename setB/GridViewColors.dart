import 'package:flutter/material.dart';

class GridViewColors extends StatefulWidget {
  @override
  _GridViewColorsState createState() => _GridViewColorsState();
}

class _GridViewColorsState extends State<GridViewColors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Colors'),),
      body: Column(
        children: [
          GridView.builder(
              gridDelegate: S,
              itemBuilder: itemBuilder
          )
        ],
      ),
    );
  }
}