import 'package:flutter/material.dart';
import 'package:periodic/periodic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Periodic(
                config: PeriodicConfig(),
              ),
              RaisedButton(
                onPressed: () async {
                  final value = await showPeriodicDialog(
                    context,
                    initialData: PeriodicData(
                      frequency: Frequency.weekly,
                      every: 5,
                      daysOfMonth: [],
                      daysOfWeek: [2, 4],
                      daysOfWeeks: [[], [], [], []],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    title: 'Periodic',
                    config: PeriodicConfig(
                      monthConfig: PeriodicItemConfig(
                          size: MediaQuery.of(context).size.width * 0.04),
                      weekConfig: PeriodicItemConfig(
                          size: MediaQuery.of(context).size.width * 0.04),
                    ),
                  );

                  print((value as PeriodicData).every);
                },
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
