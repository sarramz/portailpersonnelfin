import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/fieldsL.dart';
import 'package:portail_personnel/widgets/btn.dart';


class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(left: 30.0,right: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 20,),
                  Logo(),
                  SizedBox(height: 30,),
                  Titre("Portail Personnel"),
                  SizedBox(height: 30,),
                  FieldRow("Matricule", Icons.person),
                  FieldRow("Mot de passe", Icons.lock),
                  ConnectBtn(),
                  SizedBox(height: 60,),
                  FingerPrint()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}








