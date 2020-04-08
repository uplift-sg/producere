import 'package:flutter/material.dart';

class PremiumPage extends StatefulWidget{
  @override
  _PremiumPageState createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
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
              Text('GET PREMIUM SCREEN - TBD')
            ],
          )
        ],
      ),
    );
  }
}