import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'UI Eats'),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                ),
              ),
              title: Text("Mia Za's"),
              subtitle: Text("Pizza Place"),
              trailing: Wrap(
                spacing: 20, // space between two icons
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text('Visit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "CLOSED",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ), // icon-2
                ],
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                ),
              ),
              title: Text('Shawarma Joint'),
              subtitle: Text("Mediterranean"),
              trailing: Wrap(
                spacing: 20, // space between two icons
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text('Visit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "CLOSED",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ), // icon-2
                ],
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.purpleAccent,
                ),
              ),
              title: Text('Thai Fusion'),
              subtitle: Text("Thai"),
              trailing: Wrap(
                spacing: 20, // space between two icons
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text('Visit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "CLOSED",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ), // icon-2
                ],
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                ),
              ),
              title: Text('BangKok Thai'),
              subtitle: Text("Thai"),
              trailing: Wrap(
                spacing: 20, // space between two icons
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text('Visit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "CLOSED",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ), // icon-2
                ],
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                ),
              ),
              title: Text('Papa Johns'),
              subtitle: Text("Pizza Place"),
              trailing: Wrap(
                spacing: 20, // space between two icons
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text('Visit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "CLOSED",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ), // icon-2
                ],
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
              ),
              title: Text('Dominos'),
              subtitle: Text("Pizza Place"),
              trailing: Wrap(
                spacing: 20, // space between two icons
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text('Visit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "CLOSED",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ), // icon-2
                ],
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                ),
              ),
              title: Text('Taco Bell'),
              subtitle: Text("Mexican"),
              trailing: Wrap(
                spacing: 20, // space between two icons
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text('Visit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "CLOSED",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ), // icon-2
                ],
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
              title: Text('Signature Grill'),
              subtitle: Text("Indian"),
              trailing: Wrap(
                spacing: 20, // space between two icons
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text('Visit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "CLOSED",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ), // icon-2
                ],
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.tealAccent,
                ),
              ),
              title: Text('KungFu Tea'),
              subtitle: Text("Sushi"),
              trailing: Text(
                "OPEN",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              title: Text('Potbelly'),
              subtitle: Text("Fast Food"),
              trailing: Text(
                "OPEN",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.deepOrangeAccent,
                ),
              ),
              title: Text('Mc Donalds'),
              subtitle: Text("Fast Food"),
              trailing: Text(
                "CLOSED",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                ),
              ),
              title: Text('Subway'),
              subtitle: Text("Fast Food"),
              trailing: Text(
                "CLOSED",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
