import 'package:flutter/material.dart';
import './Welcomepage.dart';
import './signuppage.dart';


// import 'package:effortive_2025/Welcomepage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/',
    routes: {
      '/': (context) => WelcomePage(loginname: "Jascar", loginemail: "jascar@neuralnestsolutions.com", loginpassword: "Jascar@1") ,
    },
  ));
}