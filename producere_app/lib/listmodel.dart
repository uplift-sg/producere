import 'package:flutter/material.dart';
import 'widgets.dart';

class ListModel extends StatefulWidget {
  final List<String> firstSection;
  final List<List<CreateTiles>> tiles;

  ListModel ({this.firstSection, this.tiles});

  @override
  _ListModelState createState() => _ListModelState(firstSection, tiles);
}

class _ListModelState extends State<ListModel> {
  List<String> firstSection;
  List<Color> colors = new List<Color>();
  List<List<CreateTiles>> tiles = new List<List<CreateTiles>>();

  _ListModelState (firstSection, tiles) {
    this.firstSection = firstSection;
    this.tiles = tiles;

    for (int i=0; i< firstSection.length; i++) {
      colors.add(Colors.black);
    }
  }

  TextSpan title(String text, int index) {
    return new TextSpan(
        text: text, style: TextStyle(color: colors[index], fontSize: 20));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
          child: ExpansionTile(
            leading: Icon(Icons.explore, color: this.colors[index]),
            title: RichText(text: title(firstSection[index], index)),
            trailing: Icon(
              Icons.keyboard_arrow_down,
              color: this.colors[index],
            ),
            backgroundColor: Colors.indigo,
            initiallyExpanded: false,
            onExpansionChanged: (bool expanding) => setState(() => {this.colors[index] = (expanding) ? Colors.white : Colors.black}),
            children: <Widget>[
              Container(
                width: 335,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: tiles[index].length,
                  itemBuilder: (BuildContext context, int indexx) {
                    return tiles[index][indexx];
                  },
                ),
              )
            ],
          ),
        );
      },
      itemCount: firstSection.length,
    );
  }
}