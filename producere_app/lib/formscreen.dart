import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget{
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    alignment: Alignment.topLeft,
                    icon: Icon(Icons.arrow_back, color: Colors.green,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Text('FORMS SCREEN')
            ],
          )
        ],
      ),
    );
  }
}