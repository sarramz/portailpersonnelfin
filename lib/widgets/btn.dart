import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/bottom_bar.dart';

class ConnectBtn extends StatelessWidget {
  const ConnectBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      padding: EdgeInsets.symmetric(vertical: 7.0),
      width: 330,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff04253A), width: 2.0,style: BorderStyle.solid)
      ),
      child: FlatButton(
        child: Text("Connexion",style: TextStyle(color:Color(0xff04253A), fontSize: 17,fontFamily: 'andada',) ),
        onPressed:  () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) =>BottomBar())
          );
        } ,

      ),
    );
  }
}

