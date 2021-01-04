import 'package:flutter/material.dart';
import 'package:periodic/periodic.dart';

void main() {
  runApp(PeriodicExampleApp());
}

class PeriodicExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Periodic Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Periodic Demo'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PeriodicScreen(),
              ),
            ),
            title: Text('Periodic widget'),
            subtitle: Text('Simple example for Periodic widget'),
            leading: Icon(Icons.home),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PeriodicDialogScreen(),
              ),
            ),
            title: Text('Dialog'),
            subtitle: Text('Custom dialog with Periodic widget'),
            leading: Icon(Icons.face),
          )
        ],
      ),
    );
  }
}

class PeriodicScreen extends StatelessWidget {
  const PeriodicScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Periodic Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Periodic(),
        ),
      ),
    );
  }
}

class PeriodicDialogScreen extends StatelessWidget {
  const PeriodicDialogScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Periodic Dialog Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click me for dialog'),
          onPressed: () => showPeriodicDialog(context),
        ),
      ),
    );
  }
}
