import 'package:flutter/material.dart';


class greyRectangle extends StatelessWidget {

  String title;
  Widget main;
  greyRectangle(this.title, this.main);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:30.0, vertical: 40.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,),),
              main,
            ]
        ),
      ),
    );
  }
}