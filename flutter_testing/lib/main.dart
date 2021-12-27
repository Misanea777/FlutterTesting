import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Some text',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Other text',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41')
      ],
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
      ),
      title: 'Testing app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Testing'),
        ),
        body: ListView(
          children: [
            titleSection,
            titleSection,
            titleSection,
            titleSection,
            titleSection,
            titleSection,
            titleSection,
            ElevatedButton(onPressed: () => 0, child: Text('asd'))
          ],
        ),
        drawer: Text('adadad'),
      ),
    );
  }
}
