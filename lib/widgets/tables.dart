import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Headings extends StatelessWidget {
  const Headings(this.t,this.n,{Key? key}) : super(key: key);

  final String t;
  final double n;

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Container(
        margin: EdgeInsets.all(20.0),
        width: n,
        child:Text(t,
          style: TextStyle(
              color: Color(0xff04253A),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'andada'

          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2.0, color:  Color(0xff04253A)),
          ),
        ),
      ),

    );
  }
}

class ServicesT extends StatelessWidget {
  ServicesT(this.nomService,this.icon,this.color);
  final String nomService;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Column(
        children: [
          Row (
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0),
                width: 200,
                child:Text(nomService,
                  style: TextStyle(
                      color: Color(0xff04253A),
                      fontSize: 18,
                      fontFamily: 'andada'
                  ),
                ) ,
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0),
                width: 100,
                child: Icon(
                  icon,
                  color:this.color,
                ) ,
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
            child: Divider(
              color: Color(0xff04253A),
            ),
          ),
        ]
    );
  }
}

class AssurancesT extends StatelessWidget {
  const AssurancesT(this.numB,this.icon,this.m,this.color,{Key? key}) : super(key: key);

  final String numB;
  final String m;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row (
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0,right: 6,top: 10.0),
                width:127,
                child:Text(numB,
                  style: TextStyle(
                      color: Color(0xff04253A),
                      fontSize: 16,
                      fontFamily: 'andada'
                  ),
                ) ,
              ),
              Container(
                margin: EdgeInsets.only(left: 14.0,right: 6,top: 10.0),
                width: 80,
                child: Icon(
                  icon,
                  color:this.color,
                ) ,
              ),
              Container(
                margin: EdgeInsets.only(right: 8.0,left: 20.0,top: 10.00),
                width: 100,
                child:Text(m,
                  style: TextStyle(
                      color: Color(0xff04253A),
                      fontSize: 16,
                      fontFamily: 'andada'

                  ),
                ) ,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
            child: Divider(
              color: Color(0xff04253A),
            ),
          ),
        ]
    );
  }
}

class FichesT extends StatelessWidget {
  const FichesT(this.type,{Key? key}) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0,right: 10,top: 10.0),
      child: Column(
          children: [
            Row (
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0,right: 20,top: 5.0),
                  width:127,
                  child:Text(type,
                    style: TextStyle(
                        color: Color(0xff04253A),
                        fontSize: 16,
                        fontFamily: 'andada'
                    ),
                  ) ,
                ),
                SizedBox(width: 35,),
                Container(
                  margin: EdgeInsets.only(left: 50.0,right: 20.0,top:5.0),
                  width: 80,
                  child: Icon(
                    Icons.visibility_outlined,
                    color:Color(0xff04253A),
                  ) ,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
              child: Divider(
                color: Color(0xff04253A),
              ),
            ),
          ]
      ),
    );
  }
}

class PretsT extends StatelessWidget {
  const PretsT(this.pret, this.dateD,this.m,this.r,{Key? key}) : super(key: key);
  final String pret;
  final String dateD;
  final String m;
  final String r;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0,right: 10,top: 10.0),
      child: Column(
          children: [
            Row (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0,right: 20,top: 5.0),
                  width:100,
                  child:Text(pret,
                    style: TextStyle(
                        color: Color(0xff04253A),
                        fontSize: 16,
                        fontFamily: 'andada'
                    ),
                  ) ,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0,right: 0.0,top:5.0),
                  width: 200,
                  child: Column(
                    children: [
                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Date Debut:',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff04253A),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'andada'
                            ),),
                          Text(dateD,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff04253A),
                                fontFamily: 'andada'
                            ),)
                        ],
                      ),

                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Montant:',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff04253A),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'andada'
                            ),),
                          Text(m,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff04253A),
                                fontFamily: 'andada'
                            ),)
                        ],
                      ),
                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Reste:',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff04253A)  ,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'andada'
                            ),),
                          Text(r,
                            style: TextStyle(
                                fontSize: 16,
                                color:Color(0xff04253A),
                                fontFamily: 'andada'
                            ),)
                        ],
                      )
                    ],
                  ) ,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
              child: Divider(
                color: Color(0xff04253A),
              ),
            ),
          ]
      ),
    );
  }
}

class RVT extends StatelessWidget {
  const RVT(this.specialite,this.medecin,this.date,this.color,{Key? key}) : super(key: key);

  final String specialite;
  final String medecin;
  final String date;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            Row (
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0,right: 6,top: 10.0),
                  width:130,
                  child:Text(specialite,
                    style: TextStyle(
                      color: Color(0xff04253A),
                      fontSize: 16,
                    ),
                  ) ,
                ),

                Container(
                  margin: EdgeInsets.only(right: 8.0,left: 20.0,top: 10.00),
                  width: 110,
                  child:Text(medecin,
                    style: TextStyle(
                      color: Color(0xff04253A),
                      fontSize: 16,
                    ),
                  ) ,
                ),
                Container(
                    margin: EdgeInsets.only(left: 14.0,right: 6,top: 10.0),
                    width: 70,
                    child: Text(date,
                      style: TextStyle(color: color,
                          fontSize: 12) ,)
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
              child: Divider(
                color: Color(0xff04253A),
              ),
            ),
          ]
      ),
    );
  }
}





