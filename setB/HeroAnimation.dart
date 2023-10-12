import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget{
  _HeroAnimationState createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0
            ),
            itemBuilder: (context, index ) {
              index++;
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImagePage(index)));
                },
                  child: Hero(tag: 'img${index}', child: Image.asset('assets/images/img${index}.jpg',))
              );
            },
          itemCount: 6,
        ),
      ),
    );
  }
}

class ImagePage extends StatelessWidget{
  var index;
  ImagePage(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('img$index'),),
      body: Center(
        child: Hero(tag: 'img${index}', child: Image.asset('assets/images/img${index}.jpg',)),
      ),
    );
  }
}