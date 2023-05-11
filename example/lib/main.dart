import 'package:flutter/material.dart';
import 'package:stringtoicondata/stringtoicondata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'String to IconData'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Icon(
              getIconData('favorite'),
              color: Colors.pink,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            IconButton(
              icon: Icon(getIconData('volume_up')),
              tooltip: 'Increase volume by 10',
              onPressed: null,
            ),
            Icon(
              getIconData('audiotrack'),
              color: Colors.green,
              size: 30.0,
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: Icon(
                getIconData('download'),
              ),
              label: Text('Download'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          getIconData('add'),
        ),
      ),
    );
  }
}
