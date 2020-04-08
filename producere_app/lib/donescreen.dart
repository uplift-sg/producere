import 'package:flutter/material.dart';
import 'listmodel.dart';
import 'widgets.dart';

class DoneScreen extends StatefulWidget {
  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  List<List<CreateTiles>> c = [
    [CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20), CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20)],
    [CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20)],
    [CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20),CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20)],
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListModel(firstSection: ['DOMINGO','SEGUNDA', 'QUINTA'], tiles: c,);
  }
}