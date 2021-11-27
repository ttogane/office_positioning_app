import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:office_positioning_app/organisms/app_bar_with_drawer.dart';
import 'package:office_positioning_app/organisms/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithDrawer(
        icon: const Icon(Icons.layers),
        title: widget.title,
      ),

      bottomNavigationBar: const NavigationBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  child: Center(
                    child: SizedBox(
                      width: 150,
                      height: 300,
                      child: Transform(
                        transform: Matrix4.skewX(-0.90),
                        origin: const Offset(150.0, 150.0),
                        child: Image.asset('assets/floor_map/3_floor.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 135,
                  child: Center(
                    child: SizedBox(
                      width: 150,
                      height: 300,
                      child: Transform(
                        transform: Matrix4.skewX(-0.90),
                        origin: const Offset(150.0, 150.0),
                        child: Image.asset('assets/floor_map/4_floor.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 135,
                  child: Center(
                    child: SizedBox(
                      width: 150,
                      height: 300,
                      child: Transform(
                        transform: Matrix4.skewX(-0.90),
                        origin: const Offset(150.0, 150.0),
                        child: Image.asset('assets/floor_map/4_floor.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Floor'),
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
