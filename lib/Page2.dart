import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  String login;
  Page2({required this.login});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Login Page')
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(child: Text('Welcome back '+login),),
              Container(child: ElevatedButton(
                child: Text('Log out'),
                onPressed: (){Navigator.pop(context);}
              )),
            ],
          ),
        ));
  }
}