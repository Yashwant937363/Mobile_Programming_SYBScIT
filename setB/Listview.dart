import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  var sub = ['PP', 'DS', 'CN', 'OS', 'AM/MP'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List VIew'),
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orangeAccent,
                    ),
                    child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  title: Text(
                    sub[index],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Subject ${index + 1}'),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            },
            itemCount: sub.length,
          ),
        ));
  }
}
