import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87, ),
            onPressed: () => {Navigator.pop(context) }, //Until(context, ModalRoute.withName('/'))
          ),
        //icon: ,
          backgroundColor: Colors.amber,
          title: Text('PERFIL', style: TextStyle(color: Colors.black87),),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
              title: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ExpProgress(),
              ],
            ),
          )),
          //bottomOpacity: 0,
          bottom: PreferredSize(
            preferredSize: Size.square(200.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Editar Perfil', style: TextStyle(fontSize: 15),),
                Container(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    icon: Icon(Icons.mode_edit, size: 15, color: Colors.black87,),
                  ),
                )
              ],
            ),
          ),
        ),
      body: CustomScrollView(

      ),
    );
  }
}
