import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RegisterScreen'),

      ),
      body:  Text('RegisterScreen' ,
      style: TextStyle(
        fontSize: 35 ,
        fontWeight: FontWeight.bold ,

      )),

    );
  }
}
