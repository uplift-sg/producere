import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CreateTiles extends StatefulWidget {
  final String header, description;
  final int points;

  CreateTiles({
    this.header,
    this.description,
    this.points,
  });

  @override
  _CreateTilesState createState() => _CreateTilesState();
}

class _CreateTilesState extends State<CreateTiles> {
  String getHeader() {
    return widget.header;
  }

  String getDescription() {
    return widget.description;
  }

  int getPoints() {
    return widget.points;
  }

  void setNavigationFunction(Widget route) {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => route));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Container(
          height: 160,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 2,
                color: Colors.transparent
              ),
              borderRadius:
              BorderRadius.all(Radius.circular(15.0)),
            ),
            width: 390,
            padding: EdgeInsets.all(20),
            child: Stack(
              overflow: Overflow.clip,
              fit: StackFit.expand,
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  width: 100,
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 250,
                        child: Text(
                          getHeader(),
                          style: TextStyle(fontSize: 20),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      Spacing(), //just a space
                      Container(
                        width: 250,
                        height: 50,
                        child: Text(
                          getDescription(),
                          softWrap: true,
                          maxLines: 3,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      Spacing(),
                      Container(
                        width: 250,
                        child: Text(
                          'Pontos ao completar: ' + getPoints().toString(),
                          softWrap: true,
                          maxLines: 3,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Spacing(),
                          Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.lightGreen,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              //
                              ////// O mais importante é o ícone
                              /////////
                              child: IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                                iconSize: 30,
                                padding: EdgeInsets.all(1),
                              )),
                          Spacing(),
                          Spacing(),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                color: Colors.lightGreen),
                            //
                            ////// O mais importante é o ícone
                            /////////
                            child: IconButton(
                              icon: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                              iconSize: 30,
                              padding: EdgeInsets.all(1),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class ListTilesGoto extends StatefulWidget {
  final String title;
  final String subtitle;
  final String materialPageRoute;
  final bool enabled;
  final BuildContext context;

  const ListTilesGoto(
      {this.title,
      this.subtitle = '',
      this.materialPageRoute,
      this.enabled = true,
        this.context });

  @override
  _ListTilesGotoState createState() => _ListTilesGotoState(
      this.title, this.subtitle, this.materialPageRoute, this.enabled, this.context);
}

class _ListTilesGotoState extends State<ListTilesGoto> {
  String title;
  String subtitle;
  String materialPageRoute;
  bool enabled;
  BuildContext context;

  _ListTilesGotoState(title, subtitle, materialPageRoute, enabled, context) {
    this.title = title;
    this.subtitle = subtitle;
    this.materialPageRoute = materialPageRoute;
    this.enabled = enabled;
    this.context = context;
  }

  @override
  Widget build(BuildContext context) {
    if (this.subtitle != '') {
      return ListTile(
        dense: true,
        enabled: enabled,
        title: new Text(title,
            style: TextStyle(
              fontSize: 14,
            )),
        subtitle: new Text(subtitle,
            style: TextStyle(
              fontSize: 10,
            )),
        onTap: () {
          Navigator.pushNamed(this.context, materialPageRoute );
        },
      );
    } else {
      return ListTile(
        dense: true,
        enabled: enabled,
        title: new Text(title,
            style: TextStyle(
              fontSize: 14,
            )),
        onTap: () {
          Navigator.pushNamed(this.context, materialPageRoute);
        },
      );
    }
  }
}

class ExpProgress extends StatefulWidget {
  @override
  _ExpProgressState createState() => _ExpProgressState();
}

class _ExpProgressState extends State<ExpProgress> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 160,
      lineWidth: 20,
      progressColor: Colors.green,
      percent: 0.1,
      footer: Column (
        children: <Widget>[
          Text('Level 6', style: TextStyle(fontSize: 15),),
          Text('10/100', style: TextStyle(fontSize: 15),),
        ],
      ),
      //trailing: Text('50/100'),
      //leading: Text('Lvl'),
      center: Avatar(avatarurl: "http://tineye.com/images/widgets/mona.jpg",
      radius: 60.0,)
    );
  }
}

class Avatar extends StatefulWidget {
  final String avatarurl;
  final bool isCentered;
  final double radius;

  const Avatar ({this.avatarurl, this.isCentered = true, this.radius = 50});

  @override
  _AvatarState createState() => _AvatarState(this.avatarurl, this.isCentered, this.radius);
}

class _AvatarState extends State<Avatar> {
  String avatarurl;
  bool isCentered;
  double radius;

  _AvatarState (avatarurl, isCentered, radius) {
    this.avatarurl = avatarurl;
    this.isCentered = isCentered;
    this.radius = radius;
  }

  @override
  Widget build(BuildContext context) {
    if (isCentered) {
      return Container(
        alignment: Alignment.center,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage(this.avatarurl),
        ),
      );
    } else {
      return Container(
        alignment: Alignment.bottomCenter,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage(this.avatarurl),
        ),
      );
    }
  }
}

class Spacing extends StatefulWidget {
  @override
  _SpacingState createState() => _SpacingState();
}

class _SpacingState extends State<Spacing> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 10); //just a space;
  }
}