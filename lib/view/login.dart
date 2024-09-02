import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:interview/utill/custom_text_field.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const QuickTechCustomTextField(title: 'Number',),
          const SizedBox(height: 10,),
          const QuickTechCustomTextField(title: 'Password',isPass: true,),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
          }, child: const Text('Sign in'))
        ],),
      )),
    );
  }
}
