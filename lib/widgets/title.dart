import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle(this.t, {Key? key}) : super(key: key);
  final String t;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0,left: 30.0),
      child: Text( t,
        style: TextStyle(
          color:  Color(0xff04253A),
          fontFamily: 'dm',
          fontSize: 22
        ),
      ),
    );
  }
}

class Soustitre extends StatelessWidget {
  const Soustitre(this.t,{Key? key}) : super(key: key);
  final String t;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 30.0),
      child: Text( t,
          style: TextStyle(
              color:  Color(0xff04253A),
              fontFamily: 'dm',
              fontSize: 16
          ),
      ),
    );;
  }
}

