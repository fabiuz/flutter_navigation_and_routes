import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      "/SecondPage": (BuildContext context) => SecondPage(),
      "/ThirdPage": (BuildContext context) => null,
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Home Page"), backgroundColor: Colors.deepOrange),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.redAccent),
                  iconSize: 70.0,
                  onPressed: (){
                    Navigator.of(context).pushNamed("/SecondPage");
                  },
                ),
                Text("Second Page"),
              ],
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Page"), backgroundColor: Colors.deepOrange),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home, color: Colors.blue),
                  iconSize: 70.0,
                  onPressed: null,
                ),
                Text("Home"),
              ],
            ),
          ),
        ));
  }
}
