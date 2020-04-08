import 'package:flutter/material.dart';

class DirectsPage extends StatefulWidget{
  @override
  _DirectsPageState createState() => _DirectsPageState();
}

class _DirectsPageState extends State<DirectsPage> {
  @override
  Widget build(BuildContext context) {
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
              Text('DIRECTS - TBD')
            ],
          )
        ],
      ),
    );
  }
}