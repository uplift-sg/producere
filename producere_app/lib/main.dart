//Main imports
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:producere_app/formscreen.dart';
import 'package:producere_app/widgets.dart';

//Tabs
import 'allscreen.dart';
import 'donescreen.dart';
import 'todoscreen.dart';

//Screens
import 'profile.dart';
import 'directs.dart';
import 'points.dart';
import 'getpremium.dart';
import 'formscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Producere App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Home Page'),
      routes: {
        'profile': (context) => ProfilePage(),
        'directs': (context) => DirectsPage(),
        'points': (context) => PointsPage(),
        'premium': (context) => PremiumPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    TodoScreen(),
    AllScreen(),
    DoneScreen()
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'Producere',
          style: TextStyle(color: Colors.green, fontSize: 25),
        ),
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.green),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Criar novo'),
        elevation: 0.1,
        backgroundColor: Colors.amber,
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormScreen()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      drawer: new Drawer(
        semanticLabel: 'Abrir menu',
        //elevation: 10,
        child: new Column(
          children: <Widget>[
            DrawerHeader(
                child: Container(
                    child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.clip,
              children: <Widget>[
                Text(
                  'Producere',
                  style: TextStyle(color: Colors.green, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  alignment: Alignment.topRight,
                  icon: Icon(
                    Icons.close,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Avatar(avatarurl: "http://tineye.com/images/widgets/mona.jpg",
                isCentered: false,)
              ],
            ))),
            ListTilesGoto(
                title: 'Perfil',
                materialPageRoute: 'profile',//(builder: (context) {return new ProfilePage();})
                context: this.context,
            ),
            ListTilesGoto(
                title: 'Mensagens',
                subtitle: 'Em Breve',
                enabled: false,
                materialPageRoute: 'directs',
              context: this.context,
            //        MaterialPageRoute(builder: (context) => new DirectsPage())
            ),
            ListTilesGoto(
                title: 'Pontos',
                materialPageRoute: 'points',
              context: this.context,
                    //MaterialPageRoute(builder: (context) => new PointsPage())
            ),
            ListTilesGoto(
                title: 'PREMIUM - Business',
                subtitle: 'Em Breve',
                enabled: false,
                materialPageRoute: 'premium',
              context: this.context,
              //      MaterialPageRoute(builder: (context) { return new PremiumPage();})
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_box_outline_blank,
                //size: 35,
              ),
              title: Text('A FAZER')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.all_inclusive,
                //size: 35,
              ),
              title: Text('TUDO')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.done_all,
                //size: 35,
              ),
              title: Text('FEITO')),
        ],
        selectedItemColor: Colors.green,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
