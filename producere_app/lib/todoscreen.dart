import 'package:flutter/material.dart';
import 'package:producere_app/widgets.dart';
import 'listmodel.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<List<CreateTiles>> c = [
    [CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20), CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20)],
    [CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20)],
    [CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20), CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20)],
    [CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20), CreateTiles(header: "Do", description: 'TERÇA É AGORA', points: 20)]
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListModel(firstSection: ['TERÇA', 'QUARTA', 'SEXTA', 'SABADO'], tiles: c);
  }
}