import 'package:flutter/material.dart';

class Theming_and_Styling extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _Theming_and_Styling createState() => _Theming_and_Styling();
}

class _Theming_and_Styling extends State<Theming_and_Styling> {
  var sub = [
    ['PPC', 'DLA', 'CLDS', 'FDBMS', 'TCS'],
    ['OOPS', 'FMPMC', 'NM', 'WAD', 'GIT/PLSQL'],
    ['PP', 'DS', 'CN', 'OS', 'AM/MP'],
    ['CJ', 'IES', 'COST', 'SE', 'CGA']
  ];
  var sem = ['I', 'II', 'III', 'IV'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Hero(tag: 'Calculator', child: Text('Theming and Styling')),
      ),
      body: Column(
        children: [
          Text(
            "BScIT",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0),
                itemCount: sub.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.orangeAccent),
                      child: Center(
                        child: Text(
                          '${sem[index]}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    title: Text(
                      'Semester ${sem[index]}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: ListView.builder(
                      itemCount: sub[index].length,
                      itemBuilder: (context, i) {
                        return Text(
                          sub[index][i],
                          style: const TextStyle(fontSize: 17, color: Colors.black),
                        );
                      },
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
