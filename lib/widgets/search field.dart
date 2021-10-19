import 'package:flutter/material.dart';

class SearchF extends StatelessWidget {
  SearchF({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // width:300 ,
      // height: 50,
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
      decoration: BoxDecoration(color: Color(0xff04253A).withOpacity(0.3),
      borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 240,
            height: 35,
            child: TextFormField(
              controller: controller,
              style: TextStyle(color: Color(0xff04253A)),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Entrer numéro du Bulletin",
                  labelStyle: TextStyle(color: Color(0xff04253A).withOpacity(0.5),fontFamily: 'andada')
              )
            ),
          ),
          Container(
            height: 35,
            width: 50,
            child: TextButton(
              onPressed: (){},
              child: Icon(
                Icons.search_outlined,
                size: 30,
                color: Color(0xff04253A),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
