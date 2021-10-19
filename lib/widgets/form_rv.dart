import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:portail_personnel/pages/menu/centre_medical/mes_rv.dart';


class MyForm extends StatelessWidget {


  final TextEditingController matriculeC = TextEditingController();

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'pere',
      'label': 'Pére',
    },
    {
      'value': 'mere',
      'label': 'Mére',
    },
    {
      'value': 'fils1',
      'label': 'Fils 1',
    },
    {
      'value': 'fils2',
      'label': 'Fils 2',
    },
    {
      'value': 'fils3',
      'label': 'Fils 3',
    },
  ];
  final List<Map<String, dynamic>> _sp = [
    {
      'value': 'cardiologue',
      'label': 'Cardiologue',
    },
    {
      'value': 'Urgentiste',
      'label': 'Urgentiste',
    },
    {
      'value': 'medecin interne',
      'label': 'Medecin Interne',
    },

  ];
  final List<Map<String, dynamic>> _m = [
    {
      'value': 'sdiriWassim',
      'label': 'Sdiri Wassim',
    },
    {
      'value': 'gannouniSouha',
      'label': 'Gannouni Souha',
    },
    {
      'value': 'abdallahMaya',
      'label': 'Abdallah Maya',
    },
  ];


  _buildTextField(TextEditingController controller, String labelText) {
    return Opacity(opacity: 0.9,
      child: Container(
        margin: const EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color:Color(0xff04253A).withOpacity(0.3) ),
        child: TextField(
          controller: controller,
          style: TextStyle(color: Color(0xff04253A),),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              labelText: labelText,
              labelStyle: TextStyle(color: Color(0xff04253A),
              ),
              border: InputBorder.none),
        ),
      ),) ;
  }
  _buildSelectField(List<Map<String, dynamic>> _items, String labelText) {
    return Opacity(opacity: 0.9,child:Container(
      margin: const EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Color(0xff04253A).withOpacity(0.3) ),
      child:SelectFormField(
        type: SelectFormFieldType.dropdown, // or can be dialog
        initialValue: labelText,
        labelText: labelText,
        items: _items,
        onChanged: (val) => print(val),
        onSaved: (val) => print(val),
      ),
    )
      ,);
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              SizedBox(height: 60,),
              Text(
                "Prendre un Rendez-Vous",
                style: TextStyle(
                  fontFamily: "dm",
                  fontSize: 22,
                  letterSpacing: 1.5,
                  decoration: TextDecoration.underline
                ),
              ),
              _buildTextField(matriculeC, 'Matricule '),
              _buildSelectField(_items, 'Relation'),
              _buildSelectField(_sp, 'Spécialité'),
              _buildSelectField(_m, 'Medecin'),

              Container(
                margin: EdgeInsets.only(left: 185),
                child:Row(
                  children: [
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffb20e0e),
                      ),
                      margin: const EdgeInsets.only(right: 20.0),
                      child : OutlinedButton(
                        onPressed: () {},
                        child: Text('Annuler', style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: 'andada')),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 1.0, color: Color(0xffb20e0e)),
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff008037),
                      ),
                      margin: const EdgeInsets.only(right: 10.0),
                      child : OutlinedButton(
                        onPressed: () {},
                        child: Text('Valider', style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: 'andada')),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 1.0, color: Color(0xff008037)),
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),

                        ),
                      ),
                    ),
                  ],
                ) ,
              ) ,


            ],
          ),

          FlatButton(
            onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MesRv())
              );
            }, child: Container(
            margin: EdgeInsets.all(20),
              child: Align(
              alignment: Alignment.bottomRight,
                child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Consulter mes Rendez-Vous", style: TextStyle(
                    fontFamily: "dm",
                    color: Color(0xff04253A),
                    fontSize: 18,
                      decoration: TextDecoration.underline

                  ),),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.east_outlined,
                    color: Color(0xff04253A),
                    size: 25,
                  ),
                ],
              ),
            ),
          ))

        ],
      );

  }

}