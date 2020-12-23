import 'package:flutter/material.dart';

void main() {
  runApp(MyAppWithColumn());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: HomeWidget()),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 300,
          color: Colors.blue[200],
          alignment: Alignment.center,
          child: iconWidget(),
        ),
      ),
    );
  }
}

Widget textWidget() {
  return Container(
    child: Text("Meu primeiro texto",
        style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900)),
  );
}

Widget iconWidget() {
  return Container(
      child: Icon(
    Icons.ac_unit,
    color: Colors.white,
    size: 64,
  ));
}

class MyAppWithColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      title: "Material app with column",
      home: Scaffold(
        body: BaseWidget(),
      ),
    );
  }
}

class BaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ButtonWithIcon(), ButtonWithText()],
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        color: Colors.red,
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        transform: Matrix4.identity()
          ..scale(.9)
          ..translate(9.0, 4.0, 13.0),
        color: Colors.blue,
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        child: Text("Click-me",
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
      ),
    );
  }
}
