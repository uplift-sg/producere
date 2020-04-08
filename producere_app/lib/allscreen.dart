import 'package:flutter/material.dart';
import 'listmodel.dart';
import 'widgets.dart';

class AllScreen extends StatefulWidget {
  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  List<List<CreateTiles>> c = [
    [CreateTiles(header: "Reunião com Cliente",
        description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.',
        points: 20),
      CreateTiles(header: "Apresentação em Evento",
          description: 'Apresentar no Webinar sobre Liderança de Equipe as 19hs.',
          points: 30),
      CreateTiles(header: "Revisar Plano de Negócios",
          description: 'Sentar com a equié para revisarmos o plano de negócio do cliente.',
          points: 30)],
    [CreateTiles(header: "Reunião com Cliente",
        description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.',
        points: 20)],
    [CreateTiles(header: "Reunião com Cliente",
        description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.',
        points: 20),
      CreateTiles(header: "Reunião com Cliente",
          description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.',
          points: 20)],
    [CreateTiles(header: "Reunião com Cliente",
        description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.',
        points: 20),
      CreateTiles(header: "Reunião com Cliente", description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.', points: 20)],
    [CreateTiles(header: "Reunião com Cliente", description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.', points: 20), CreateTiles(header: "Reunião com Cliente", description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.', points: 20)],
    [CreateTiles(header: "Reunião com Cliente", description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.', points: 20), CreateTiles(header: "Reunião com Cliente", description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.', points: 20)],
    [CreateTiles(header: "Reunião com Cliente", description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.', points: 20), CreateTiles(header: "Reunião com Cliente", description: 'Elaborar a reunião com o cliente para ajeitar as estruturas do projeto de implantação de software.', points: 20)],
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListModel(firstSection: ['DOMINGO', 'SEGUNDA', 'TERÇA', 'QUARTA', 'QUINTA', 'SEXTA', 'SABADO'],
        tiles: c);
  }
}