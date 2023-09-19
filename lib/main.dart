import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chicken Biryani',
      home: buildHomePage('Chicken Dham Biryani'),

    );
  }

  Widget buildHomePage(String title) {
    const titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text('Chicken Racipi',
        style: TextStyle(fontSize: 30,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w200),),
    );
   const subTitle = Text(
     "Chicken Biryani In India, the eternal favourite for a special Sunday lunch or a party dish is definitely a perfectly layered 'Chicken Biryani., dum cooked to perfection! And"
      ' it’s a visual delight too – a beautiful array of long-grained rice, tender chicken and pungent spices studded with fresh mint and coriander, topped with fried onions and boiled egg wedges.',
     textAlign: TextAlign.center,
     style: TextStyle(fontFamily: 'georgia',fontSize: 20),
    );

   var stars = Row(
     children: [
       Icon(Icons.star,color: Colors.green[500],),
       Icon(Icons.star,color: Colors.green[500],),
       Icon(Icons.star,color: Colors.green[500],),
      const Icon(Icons.star,color: Colors.black,),
      const Icon(Icons.star,color: Colors.black),
     ],
   );
   final ratinges  = Container(
     padding: EdgeInsets.all(20),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         stars,
         Text('Reviues 1000',
           style: TextStyle(fontFamily: 'Roboto',
               fontWeight: FontWeight.w600,
               fontSize: 10,letterSpacing: 0.5,
               color: Colors.pink),)
       ],
     ),
   );


  const descTextStyle = TextStyle(
     color: Colors.blue,
     fontWeight: FontWeight.w300,
     fontFamily: 'Roboto',
     letterSpacing: 0.5,
     height: 2,
     fontSize: 10,
   );

  final IconsList = DefaultTextStyle.merge(
    style: descTextStyle,
      child:  Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen,color: Colors.pink,),
            Text('prep'),
            Text('30 min')
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer,color: Colors.pink,),
            Text('cook'),
            Text('50 min')
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant,color: Colors.pink,),
            Text('feeds'),
            Text('15 min')
          ],
        ),
      ],
    ),
  ));
 

 final  leftColumn = Container(
   child: Column(
     children: [
       titleText,subTitle, ratinges,IconsList
     ],
   ),

   );
    final mainImage = Image.asset("images/biryani.jpg");



    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          height: 400,
          child: Card(
            child: Row(
              children: [
                SizedBox(
                  width: 300,
                  child: leftColumn,
                ),
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}