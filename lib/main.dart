import 'package:flutter/material.dart';
import './Page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1()
    );
  }
}

class Page1 extends StatelessWidget {
  Page1({super.key});
String login = '';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: ('Input Login'),
              ),
              onChanged: (text) {login = text;}
            ),),
            Container(child: ElevatedButton(
              child: Text('Login'),
              onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2(login:login)));}
            )),
          ],
        ),
    ));
  }
}

